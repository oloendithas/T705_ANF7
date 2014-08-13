.class final Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation


# static fields
.field private static final VIEW_TYPE_COUNT:I = 0x5

.field public static final VIEW_TYPE_DETAIL_ENTRY:I = 0x0

.field public static final VIEW_TYPE_HEADER_ENTRY:I = 0x1

.field public static final VIEW_TYPE_KIND_TITLE_ENTRY:I = 0x2

.field public static final VIEW_TYPE_NETWORK_TITLE_ENTRY:I = 0x3

.field public static final VIEW_TYPE_SEPARATOR_ENTRY:I = 0x4


# instance fields
.field private final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mThirdActionClickListener:Landroid/view/View$OnClickListener;

.field private final mfourthActionClickListener_STATE:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field private videoSwitch:Landroid/widget/Switch;

.field private video_switch_pref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 2

    .prologue
    .line 4746
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->videoSwitch:Landroid/widget/Switch;

    .line 4755
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->video_switch_pref:Landroid/content/SharedPreferences;

    .line 5533
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$7;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 5580
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 5596
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$9;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mThirdActionClickListener:Landroid/view/View$OnClickListener;

    .line 5611
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mfourthActionClickListener_STATE:Landroid/view/View$OnClickListener;

    .line 4747
    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4748
    new-instance v0, Lcom/sec/android/app/contacts/ListHoverManager;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/ListHoverManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2802(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/sec/android/app/contacts/ListHoverManager;)Lcom/sec/android/app/contacts/ListHoverManager;

    .line 4750
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p2, "x1"    # Lcom/android/contacts/detail/ContactDetailFragment$1;

    .prologue
    .line 4737
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .prologue
    .line 4737
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->video_switch_pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 34
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 5181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 5182
    .local v16, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 5184
    .local v27, "views":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_f

    .line 5185
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5186
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5189
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c008b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setMinimumHeight(I)V

    .line 5198
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v28

    const v29, 0x7f090143

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    if-eqz v28, :cond_0

    .line 5200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v29

    const v30, 0x7f090143

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v30, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z
    invoke-static/range {v30 .. v30}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4000(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v31, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static/range {v31 .. v31}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v32, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static/range {v32 .. v32}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v32

    invoke-static/range {v28 .. v32}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setEditButton(Landroid/content/Context;Landroid/view/View;ZZLcom/android/contacts/ContactLoader$Result;)V

    .line 5205
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 5206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v28

    if-eqz v28, :cond_10

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_10

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    const-string v29, "rcs_free_text"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 5208
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getFreeText()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5215
    :goto_1
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 5218
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_12

    .line 5219
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5220
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5226
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v28

    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 5227
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5231
    :goto_3
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->blacklistIndicator:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    move/from16 v28, v0

    if-eqz v28, :cond_15

    const/16 v28, 0x0

    :goto_4
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 5236
    .local v13, "presenceIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v27

    iget-object v14, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 5237
    .local v14, "presenceIconView":Landroid/widget/ImageView;
    if-eqz v13, :cond_16

    .line 5238
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5239
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5244
    :goto_5
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    check-cast v5, Lcom/android/contacts/detail/ActionsViewContainer;

    .line 5246
    .local v5, "actionsButtonContainer":Lcom/android/contacts/detail/ActionsViewContainer;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5247
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/contacts/detail/ActionsViewContainer;->setPosition(I)V

    .line 5249
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v28

    const v29, 0x7f0e0185

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 5251
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 5254
    :cond_2
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionButton:Landroid/widget/ImageView;

    .line 5255
    .local v4, "actionView":Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 5256
    .local v3, "actionIcon":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 5257
    .local v15, "primaryActionDescription":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1b

    .line 5281
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 5282
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5283
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5285
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    move/from16 v28, v0

    if-lez v28, :cond_18

    .line 5286
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 5287
    if-eqz p3, :cond_17

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_17

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e0186

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 5289
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5290
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setClickable(Z)V

    .line 5316
    :goto_6
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    .line 5317
    .local v19, "secondaryActionView":Landroid/widget/ImageView;
    const/16 v18, 0x0

    .line 5319
    .local v18, "secondaryActionIcon":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 5320
    .local v17, "secondaryActionDescription":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1c

    .line 5321
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 5322
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    move/from16 v28, v0

    if-lez v28, :cond_3

    .line 5323
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 5336
    :cond_3
    :goto_7
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    move-object/from16 v20, v0

    .line 5337
    .local v20, "secondaryActionViewContainer":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1e

    if-eqz v18, :cond_1e

    .line 5338
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5339
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5340
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5341
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5342
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f090152

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setNextFocusForwardId(I)V

    .line 5344
    if-eqz v17, :cond_4

    .line 5345
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5354
    :cond_4
    :goto_8
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionButton:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    .line 5355
    .local v24, "thirdActionView":Landroid/widget/ImageView;
    const/16 v23, 0x0

    .line 5356
    .local v23, "thirdActionIcon":Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 5357
    .local v22, "thirdActionDescription":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    .line 5358
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 5359
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionDescription:I

    move/from16 v28, v0

    if-lez v28, :cond_5

    .line 5360
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionDescription:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 5365
    :cond_5
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionViewContainer:Landroid/view/View;

    move-object/from16 v25, v0

    .line 5366
    .local v25, "thirdActionViewContainer":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1f

    if-eqz v23, :cond_1f

    .line 5367
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5368
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5369
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5370
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionDivider:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5371
    if-eqz v22, :cond_6

    .line 5372
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5401
    :cond_6
    :goto_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountIcon:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_20

    .line 5402
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5403
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setClickable(Z)V

    .line 5404
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v31, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v31 .. v31}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountIcon:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountNames:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-direct/range {v29 .. v33}, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5405
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5412
    :goto_a
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 5413
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    move/from16 v28, v0

    const v29, 0x7f0206e2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 5414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setCurrentViewAndEntry(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 5415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v28

    if-eqz v28, :cond_21

    .line 5416
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5420
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateUI()V

    .line 5436
    :cond_7
    :goto_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_Contact_EnableAABYP"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v28

    if-eqz v28, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->getValidTitlePosition()I

    move-result v28

    add-int/lit8 v29, p1, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    .line 5444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->setIsProgressWidgetInvalid(Z)V

    .line 5452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v28

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->directorySvcUtilsAutoSyncIndicator:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->setAutoSyncIcon(Landroid/view/View;)V

    .line 5468
    :cond_8
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v28

    if-eqz v28, :cond_b

    .line 5469
    const v28, 0x7f090153

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 5470
    .local v26, "type":Landroid/widget/TextView;
    const v28, 0x7f090002

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 5472
    .local v7, "data":Landroid/widget/TextView;
    if-eqz v26, :cond_9

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v28

    if-nez v28, :cond_a

    :cond_9
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 5473
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v28

    const v29, 0x7f090153

    const v30, 0x7f090002

    invoke-virtual/range {v28 .. v30}, Lcom/sec/android/app/contacts/ListHoverManager;->setTextViewId(II)V

    .line 5474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v28

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/contacts/ListHoverManager;->setHoverPopup(Landroid/view/View;)V

    .line 5479
    .end local v7    # "data":Landroid/widget/TextView;
    .end local v26    # "type":Landroid/widget/TextView;
    :cond_b
    sget-boolean v28, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v28, :cond_e

    .line 5481
    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionViewContainer:Landroid/view/View;

    .line 5483
    .local v11, "fourthActionViewContainer":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    if-eqz v28, :cond_29

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_29

    .line 5485
    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionButton:Landroid/widget/ImageView;

    .line 5486
    .local v10, "fourthActionView":Landroid/widget/ImageView;
    const/4 v9, 0x0

    .line 5487
    .local v9, "fourthActionIcon":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 5489
    .local v8, "fourthActionDescription":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionIcon:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 5490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionIcon:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 5491
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionDescription:I

    move/from16 v28, v0

    if-lez v28, :cond_c

    .line 5492
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionDescription:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5496
    :cond_c
    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->numbercapability:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4300()Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5498
    .local v6, "capVal":Ljava/lang/String;
    if-eqz v6, :cond_28

    const-string v28, "0"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    const-string v28, "1"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_28

    :cond_d
    const/4 v12, 0x0

    .line 5501
    .local v12, "iconVisibility":I
    :goto_e
    if-eqz v9, :cond_e

    .line 5502
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5503
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5504
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 5505
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionDivider:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 5507
    if-eqz v8, :cond_e

    .line 5508
    invoke-virtual {v10, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5517
    .end local v6    # "capVal":Ljava/lang/String;
    .end local v8    # "fourthActionDescription":Ljava/lang/String;
    .end local v9    # "fourthActionIcon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "fourthActionView":Landroid/widget/ImageView;
    .end local v11    # "fourthActionViewContainer":Landroid/view/View;
    .end local v12    # "iconVisibility":I
    :cond_e
    :goto_f
    return-void

    .line 5192
    .end local v3    # "actionIcon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "actionView":Landroid/widget/ImageView;
    .end local v5    # "actionsButtonContainer":Lcom/android/contacts/detail/ActionsViewContainer;
    .end local v13    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "presenceIconView":Landroid/widget/ImageView;
    .end local v15    # "primaryActionDescription":Ljava/lang/String;
    .end local v17    # "secondaryActionDescription":Ljava/lang/String;
    .end local v18    # "secondaryActionIcon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "secondaryActionView":Landroid/widget/ImageView;
    .end local v20    # "secondaryActionViewContainer":Landroid/view/View;
    .end local v22    # "thirdActionDescription":Ljava/lang/String;
    .end local v23    # "thirdActionIcon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "thirdActionView":Landroid/widget/ImageView;
    .end local v25    # "thirdActionViewContainer":Landroid/view/View;
    :cond_f
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5194
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c0102

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_0

    .line 5210
    :cond_10
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5212
    :cond_11
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5222
    :cond_12
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 5229
    :cond_13
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    move/from16 v28, v0

    if-eqz v28, :cond_14

    const/16 v28, 0x0

    :goto_10
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_14
    const/16 v28, 0x8

    goto :goto_10

    .line 5231
    :cond_15
    const/16 v28, 0x8

    goto/16 :goto_4

    .line 5241
    .restart local v13    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "presenceIconView":Landroid/widget/ImageView;
    :cond_16
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 5292
    .restart local v3    # "actionIcon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "actionView":Landroid/widget/ImageView;
    .restart local v5    # "actionsButtonContainer":Lcom/android/contacts/detail/ActionsViewContainer;
    .restart local v15    # "primaryActionDescription":Ljava/lang/String;
    :cond_17
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    .line 5293
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setClickable(Z)V

    .line 5294
    invoke-virtual {v4, v15}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 5296
    :cond_18
    if-eqz p3, :cond_1a

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1a

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e0127

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e028c

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e02a8

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e02a6

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 5303
    :cond_19
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5304
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_6

    .line 5306
    :cond_1a
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    .line 5307
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setClickable(Z)V

    .line 5308
    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5309
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/16 :goto_6

    .line 5312
    :cond_1b
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 5326
    .restart local v17    # "secondaryActionDescription":Ljava/lang/String;
    .restart local v18    # "secondaryActionIcon":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "secondaryActionView":Landroid/widget/ImageView;
    :cond_1c
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x4

    if-eqz v28, :cond_1d

    .line 5327
    const v28, 0x7f0206e9

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 5329
    const v28, 0x7f0e0173

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_7

    .line 5330
    :cond_1d
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_3

    .line 5331
    const v28, 0x7f020675

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 5333
    const v28, 0x7f0e0172

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_7

    .line 5348
    .restart local v20    # "secondaryActionViewContainer":Landroid/view/View;
    :cond_1e
    const/16 v28, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5349
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5350
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, -0x1

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setNextFocusForwardId(I)V

    goto/16 :goto_8

    .line 5375
    .restart local v22    # "thirdActionDescription":Ljava/lang/String;
    .restart local v23    # "thirdActionIcon":Landroid/graphics/drawable/Drawable;
    .restart local v24    # "thirdActionView":Landroid/widget/ImageView;
    .restart local v25    # "thirdActionViewContainer":Landroid/view/View;
    :cond_1f
    const/16 v28, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5376
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionDivider:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 5407
    :cond_20
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5408
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 5418
    :cond_21
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 5421
    :cond_22
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_24

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    const-string v29, "rcs_free_text"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_24

    .line 5422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setCurrentViewAndEntry(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 5423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v28

    if-nez v28, :cond_23

    .line 5424
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5428
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateFreeTextUI()V

    goto/16 :goto_c

    .line 5426
    :cond_23
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    .line 5430
    :cond_24
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 5431
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 5455
    :cond_25
    if-eqz p2, :cond_8

    .line 5456
    const v28, 0x7f090156

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 5457
    .local v21, "tempAutoSyncIndicator":Landroid/view/View;
    if-eqz v21, :cond_27

    .line 5458
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_26

    .line 5459
    const-string v28, "ContactDetailFragment"

    const-string v29, "auto sync indicator was visible"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5461
    :cond_26
    const/16 v28, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 5463
    :cond_27
    const-string v28, "ContactDetailFragment"

    const-string v29, "there is not auto sync indicator in this view"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 5498
    .end local v21    # "tempAutoSyncIndicator":Landroid/view/View;
    .restart local v6    # "capVal":Ljava/lang/String;
    .restart local v8    # "fourthActionDescription":Ljava/lang/String;
    .restart local v9    # "fourthActionIcon":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "fourthActionView":Landroid/widget/ImageView;
    .restart local v11    # "fourthActionViewContainer":Landroid/view/View;
    :cond_28
    const/16 v12, 0x8

    goto/16 :goto_e

    .line 5512
    .end local v6    # "capVal":Ljava/lang/String;
    .end local v8    # "fourthActionDescription":Ljava/lang/String;
    .end local v9    # "fourthActionIcon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "fourthActionView":Landroid/widget/ImageView;
    :cond_29
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5513
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionDivider:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 4976
    invoke-virtual/range {p0 .. p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 4983
    .local v14, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz p2, :cond_6

    .line 4984
    move-object/from16 v3, p2

    .line 4985
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 4987
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v4, 0x7f090163

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3302(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 4988
    const v4, 0x7f090167

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 4989
    .local v17, "normalViewLayout":Landroid/widget/LinearLayout;
    if-eqz v17, :cond_0

    .line 4990
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4991
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5014
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v4, :cond_b

    .line 5015
    const-string v4, "ContactDetailFragment"

    const-string v5, "dialog in profile enter"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5016
    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->videoEnableSwitch:Z
    invoke-static {v14}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1700(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 5017
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 5020
    .local v15, "inflater":Landroid/view/LayoutInflater;
    if-eqz v17, :cond_2

    .line 5021
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5022
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 5023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5025
    :cond_3
    const v4, 0x7f0400a9

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 5026
    .local v10, "dialogCheckView":Landroid/view/View;
    const v4, 0x7f0400ac

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 5028
    .local v11, "dialogUncheckView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v4, 0x7f090164

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v5, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3502(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 5029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0e04f7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5032
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v4, 0x7f090165

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v5, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3602(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 5033
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5034
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v4, 0x7f090166

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v5, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1602(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 5035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5036
    const v4, 0x7f09022b

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 5038
    .local v12, "dialog_checkbox":Landroid/widget/CheckBox;
    const v4, 0x7f090231

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 5040
    .local v13, "dialog_uncheckbox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v5, Lcom/android/contacts/detail/TTY;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/contacts/detail/TTY;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/contacts/detail/TTY;->getTTYState()Z

    move-result v5

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z
    invoke-static {v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3702(Lcom/android/contacts/detail/ContactDetailFragment;Z)Z

    .line 5041
    const-string v4, "ContactDetailFragment"

    const-string v5, "inside detailviewpreferred_tty_mode"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    const-string v4, "ContactDetailFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inside detailview"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 5046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->isMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish403()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish404()Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAirplaneModeon:Z
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3800(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->isEarJackConnected()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->isVoiceOverLTEEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5053
    const-string v4, "ContactDetailFragment"

    const-string v5, "inside onresume"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5057
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 5066
    :cond_5
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 5068
    .local v8, "alertDialogChecked":Landroid/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e04fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5071
    invoke-virtual {v8, v10}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 5073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0347

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v4, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 5090
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 5092
    .local v9, "alertDialogUncheck":Landroid/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0500

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5094
    invoke-virtual {v9, v11}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 5096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0347

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$5;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 5113
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isLTEVideoCallEnabled()Z

    move-result v16

    .line 5114
    .local v16, "ltevideovalue":Z
    const-string v4, "ContactDetailFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLTEVideoCallEnabled()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->isSettingsVideoCallEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 5120
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/app/AlertDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5174
    .end local v8    # "alertDialogChecked":Landroid/app/AlertDialog;
    .end local v9    # "alertDialogUncheck":Landroid/app/AlertDialog;
    .end local v10    # "dialogCheckView":Landroid/view/View;
    .end local v11    # "dialogUncheckView":Landroid/view/View;
    .end local v12    # "dialog_checkbox":Landroid/widget/CheckBox;
    .end local v13    # "dialog_uncheckbox":Landroid/widget/CheckBox;
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "ltevideovalue":Z
    :goto_3
    return-object v3

    .line 4996
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    .end local v3    # "v":Landroid/view/View;
    .end local v17    # "normalViewLayout":Landroid/widget/LinearLayout;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040052

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 4998
    .restart local v3    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v4, 0x7f090163

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3302(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 4999
    const v4, 0x7f090167

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 5003
    .restart local v17    # "normalViewLayout":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mThirdActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mfourthActionClickListener_STATE:Landroid/view/View$OnClickListener;

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 5006
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mFontSizeIsSet:Z
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3400(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5007
    iget-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f110052

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 5010
    :cond_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5059
    .restart local v10    # "dialogCheckView":Landroid/view/View;
    .restart local v11    # "dialogUncheckView":Landroid/view/View;
    .restart local v12    # "dialog_checkbox":Landroid/widget/CheckBox;
    .restart local v13    # "dialog_uncheckbox":Landroid/widget/CheckBox;
    .restart local v15    # "inflater":Landroid/view/LayoutInflater;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 5118
    .restart local v8    # "alertDialogChecked":Landroid/app/AlertDialog;
    .restart local v9    # "alertDialogUncheck":Landroid/app/AlertDialog;
    .restart local v16    # "ltevideovalue":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 5168
    .end local v8    # "alertDialogChecked":Landroid/app/AlertDialog;
    .end local v9    # "alertDialogUncheck":Landroid/app/AlertDialog;
    .end local v10    # "dialogCheckView":Landroid/view/View;
    .end local v11    # "dialogUncheckView":Landroid/view/View;
    .end local v12    # "dialog_checkbox":Landroid/widget/CheckBox;
    .end local v13    # "dialog_uncheckbox":Landroid/widget/CheckBox;
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "ltevideovalue":Z
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 5169
    const-string v4, "ContactDetailFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "view2 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5173
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    goto/16 :goto_3
.end method

.method private getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 4780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v1, :cond_5

    .line 4781
    const v7, 0x7f040093

    .line 4786
    .local v7, "desiredLayoutResourceId":I
    :goto_0
    const/4 v15, 0x0

    .line 4787
    .local v15, "result":Landroid/view/View;
    const/16 v16, 0x0

    .line 4792
    .local v16, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    if-eqz p1, :cond_0

    .line 4793
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    check-cast v16, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .line 4794
    .restart local v16    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    if-ne v1, v7, :cond_0

    .line 4795
    move-object/from16 v15, p1

    .line 4800
    :cond_0
    if-nez v15, :cond_1

    .line 4801
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 4802
    new-instance v16, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .end local v16    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    move-object/from16 v0, v16

    invoke-direct {v0, v15, v7}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;-><init>(Landroid/view/View;I)V

    .line 4803
    .restart local v16    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4806
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 4808
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 4811
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    if-eqz v1, :cond_2

    .line 4812
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4813
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4887
    :cond_2
    :goto_1
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/CheckBox;

    .line 4888
    .local v8, "favoritesStar":Landroid/widget/CheckBox;
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4889
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;Landroid/content/Context;)V

    .line 4890
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4891
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 4893
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v12

    .line 4894
    .local v12, "lookupUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12, v8}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/net/Uri;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4917
    .end local v12    # "lookupUri":Landroid/net/Uri;
    :cond_4
    return-object v15

    .line 4783
    .end local v7    # "desiredLayoutResourceId":I
    .end local v8    # "favoritesStar":Landroid/widget/CheckBox;
    .end local v15    # "result":Landroid/view/View;
    .end local v16    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2900(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v7, 0x7f040094

    .restart local v7    # "desiredLayoutResourceId":I
    :goto_2
    goto/16 :goto_0

    .end local v7    # "desiredLayoutResourceId":I
    :cond_6
    const v7, 0x7f040095

    goto :goto_2

    .line 4832
    .restart local v7    # "desiredLayoutResourceId":I
    .restart local v15    # "result":Landroid/view/View;
    .restart local v16    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    :cond_7
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4833
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Lcom/sec/android/app/contacts/widget/AnimatableImageView;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;

    move-result-object v11

    .line 4835
    .local v11, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v13

    .line 4836
    .local v13, "photoBiteArray":[B
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v10, 0x1

    .line 4837
    .local v10, "isZoominPhotoPopup":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isPrivateContact()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isChangedNamecard()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v9, 0x1

    .line 4839
    .local v9, "isNamecard":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v10, :cond_c

    .line 4840
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->enablePhotoOverlay(Landroid/view/View$OnClickListener;)V

    .line 4845
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4846
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 4847
    .local v14, "photoContainer":Landroid/widget/FrameLayout;
    if-eqz v14, :cond_2

    .line 4848
    if-eqz v9, :cond_d

    .line 4849
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4853
    :goto_6
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4854
    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 4836
    .end local v9    # "isNamecard":Z
    .end local v10    # "isZoominPhotoPopup":Z
    .end local v14    # "photoContainer":Landroid/widget/FrameLayout;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 4837
    .restart local v10    # "isZoominPhotoPopup":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_4

    .line 4842
    .restart local v9    # "isNamecard":Z
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->enablePhotoOverlay(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 4851
    .restart local v14    # "photoContainer":Landroid/widget/FrameLayout;
    :cond_d
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_6
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 4934
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    .line 4937
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4938
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 4940
    .local v2, "result":Landroid/view/View;
    :goto_0
    const v5, 0x7f09014f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4941
    .local v1, "nosyncIcon":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->getIsNoSync()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4946
    .end local v1    # "nosyncIcon":Landroid/widget/ImageView;
    :goto_2
    const v4, 0x7f0901f0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4947
    .local v3, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4949
    return-object v2

    .line 4938
    .end local v2    # "result":Landroid/view/View;
    .end local v3    # "titleTextView":Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040187

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 4941
    .restart local v1    # "nosyncIcon":Landroid/widget/ImageView;
    .restart local v2    # "result":Landroid/view/View;
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 4943
    .end local v1    # "nosyncIcon":Landroid/widget/ImageView;
    .end local v2    # "result":Landroid/view/View;
    :cond_2
    if-eqz p2, :cond_3

    move-object v2, p2

    .restart local v2    # "result":Landroid/view/View;
    :goto_3
    goto :goto_2

    .end local v2    # "result":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040186

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_3
.end method

.method private getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 4953
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    .line 4957
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;
    if-eqz p2, :cond_0

    .line 4958
    move-object v1, p2

    .line 4959
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    .line 4969
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4970
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4972
    return-object v1

    .line 4961
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040056

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 4963
    .restart local v1    # "result":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;-><init>(Landroid/view/View;)V

    .line 4964
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4965
    const v3, 0x7f0900df

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->access$3200(Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 4922
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 4930
    .local v0, "result":Landroid/view/View;
    :goto_0
    return-object v0

    .line 4922
    .end local v0    # "result":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040057

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "maxLines"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5520
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 5522
    .local v0, "bottomPadding":I
    if-ne p2, v4, :cond_0

    .line 5523
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 5524
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 5530
    :goto_0
    invoke-virtual {p1, v3, v3, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5531
    return-void

    .line 5526
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 5527
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5528
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 5693
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 5654
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5659
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 4737
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-wide/16 v1, -0x1

    .line 5679
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 5687
    :cond_0
    :goto_0
    return-wide v1

    .line 5683
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 5684
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 5685
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5665
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 5666
    const/4 v0, -0x1

    .line 5668
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getViewType()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 4761
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4773
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4763
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4771
    :goto_0
    return-object v0

    .line 4765
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 4767
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 4769
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 4771
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 4761
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 5673
    const/4 v0, 0x5

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5698
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
