.class Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/android/contacts/list/ContactTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "itemViewType"    # I

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    .line 942
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 943
    iput p3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    .line 944
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    # invokes: Lcom/android/contacts/list/ContactTileAdapter;->getLayoutResourceId(I)I
    invoke-static {p1, v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$700(Lcom/android/contacts/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    .line 945
    return-void
.end method

.method private addTileFromEntry(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;IZZZ)V
    .locals 17
    .param p1, "entry"    # Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    .param p2, "childIndex"    # I
    .param p3, "isLastRow"    # Z
    .param p4, "isVoLTEEnabled"    # Z
    .param p5, "isPreviousRowOfDivider"    # Z

    .prologue
    .line 972
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 973
    .local v9, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "favorite_strquent_listview_state"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 975
    .local v2, "bListView":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v13

    move/from16 v0, p2

    if-gt v13, v0, :cond_e

    .line 976
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactTileView;

    .line 977
    .local v4, "contactTile":Lcom/android/contacts/list/ContactTileView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v13

    sget-object v14, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v13, v14, :cond_0

    .line 978
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 979
    const v13, 0x7f09001d

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 980
    .local v10, "sweepListView":Landroid/view/View;
    if-eqz v10, :cond_0

    .line 981
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/view/View;->setId(I)V

    .line 988
    .end local v10    # "sweepListView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v13

    sget-object v14, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v13, v14, :cond_d

    .line 989
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v7, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1003
    .local v7, "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    invoke-virtual {v4, v7}, Lcom/android/contacts/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->setPhotoManager(Lcom/android/contacts/ContactPhotoManager;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1100(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->setListener(Lcom/android/contacts/list/ContactTileView$Listener;)V

    .line 1006
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    .line 1010
    .end local v7    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionMode:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1200(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mIsPhone:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1300(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1011
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->setStarredCallButtonEnabled(Z)V

    .line 1015
    :cond_1
    :goto_2
    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/contacts/list/ContactTileView;->setVoLTEEnabled(Z)V

    .line 1016
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Lcom/android/contacts/list/ContactTileView;->loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;I)V

    .line 1017
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    if-nez v13, :cond_2

    .line 1018
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->setEnabled(Z)V

    .line 1020
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v13, :pswitch_data_0

    .line 1050
    :cond_3
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionMode:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1200(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 1051
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->showGridCheckBox()V

    .line 1052
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->showListCheckBox()V

    .line 1058
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionMode:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1200(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1059
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    .line 1060
    .local v6, "lookupKey":Landroid/net/Uri;
    if-eqz v6, :cond_4

    .line 1061
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v8

    .line 1062
    .local v8, "pos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1600(Lcom/android/contacts/list/ContactTileAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1063
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->setItemSelected(Z)V

    .line 1071
    .end local v6    # "lookupKey":Landroid/net/Uri;
    .end local v8    # "pos":I
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1072
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    .line 1073
    .local v3, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v3, :cond_5

    .line 1074
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 1078
    .end local v3    # "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_21

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v13

    sget-object v14, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v13, v14, :cond_21

    .line 1080
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v14

    # invokes: Lcom/android/contacts/list/ContactTileAdapter;->isSelectedUri(Landroid/net/Uri;)Z
    invoke-static {v13, v14}, Lcom/android/contacts/list/ContactTileAdapter;->access$1700(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;)Z

    move-result v5

    .line 1081
    .local v5, "isSelected":Z
    if-eqz v5, :cond_7

    .line 1082
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # setter for: Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v13, v4}, Lcom/android/contacts/list/ContactTileAdapter;->access$402(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 1083
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v13, v4, v5}, Lcom/android/contacts/list/ContactTileAdapter;->setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V

    .line 1086
    const v13, 0x7f0901bf

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1087
    .local v12, "view":Landroid/view/View;
    if-eqz v12, :cond_8

    .line 1088
    const v13, 0x7f0901be

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1090
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1800(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 1091
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 1092
    const v13, 0x7f020604

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1107
    :goto_6
    const v13, 0x7f0901be

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    const v13, 0x7f0901be

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f02098e

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1121
    .end local v5    # "isSelected":Z
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "view":Landroid/view/View;
    :cond_8
    :goto_7
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->isdoubleline()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1122
    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->sIsTwoPaneMode:Z
    invoke-static {}, Lcom/android/contacts/list/ContactTileAdapter;->access$1500()Z

    move-result v13

    if-nez v13, :cond_9

    .line 1123
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c00dd

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1127
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1128
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1129
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v13

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 1130
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c00dd

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1133
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v13

    const v14, 0x7f0901bd

    const v15, 0x7f0901bc

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/contacts/ListHoverManager;->setTextViewId(II)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/sec/android/app/contacts/ListHoverManager;->setHoverPopup(Landroid/view/View;)V

    .line 1139
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1140
    const v13, 0x7f0901b4

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1141
    .restart local v12    # "view":Landroid/view/View;
    if-eqz v12, :cond_c

    .line 1142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0135

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1173
    .end local v12    # "view":Landroid/view/View;
    :cond_c
    return-void

    .line 993
    :cond_d
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v7, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 996
    .local v7, "params":Landroid/widget/FrameLayout$LayoutParams;
    const v13, 0x7f0c0088

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const/4 v14, 0x0

    const v15, 0x7f0c0088

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 1008
    .end local v4    # "contactTile":Lcom/android/contacts/list/ContactTileView;
    .end local v7    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactTileView;

    .restart local v4    # "contactTile":Lcom/android/contacts/list/ContactTileView;
    goto/16 :goto_1

    .line 1012
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mIsPhone:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1300(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1013
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->setStarredCallButtonEnabled(Z)V

    goto/16 :goto_2

    .line 1024
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1025
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1400(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p2

    if-lt v0, v13, :cond_10

    const/4 v13, 0x0

    move v14, v13

    :goto_8
    if-eqz p3, :cond_11

    const/4 v13, 0x0

    :goto_9
    move/from16 v0, v16

    invoke-virtual {v4, v15, v0, v14, v13}, Lcom/android/contacts/list/ContactTileView;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1400(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v13

    move v14, v13

    goto :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1400(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    goto :goto_9

    .line 1028
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1029
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00ff

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1030
    .local v11, "topPadding":I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p2

    if-lt v0, v13, :cond_13

    const/4 v13, 0x0

    :goto_a
    const/4 v15, 0x0

    invoke-virtual {v4, v14, v11, v13, v15}, Lcom/android/contacts/list/ContactTileView;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1400(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v13

    goto :goto_a

    .line 1033
    .end local v11    # "topPadding":I
    :cond_14
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1400(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p2

    if-lt v0, v13, :cond_16

    const/4 v13, 0x0

    move v14, v13

    :goto_b
    if-nez p3, :cond_15

    if-nez p5, :cond_17

    :cond_15
    const/4 v13, 0x0

    :goto_c
    move/from16 v0, v16

    invoke-virtual {v4, v15, v0, v14, v13}, Lcom/android/contacts/list/ContactTileView;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1400(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v13

    move v14, v13

    goto :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1400(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v13

    goto :goto_c

    .line 1039
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v13

    sget-object v14, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-eq v13, v14, :cond_19

    .line 1040
    if-eqz p3, :cond_18

    const/16 v13, 0x8

    :goto_d
    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto/16 :goto_3

    :cond_18
    const/4 v13, 0x0

    goto :goto_d

    .line 1042
    :cond_19
    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->sIsTwoPaneMode:Z
    invoke-static {}, Lcom/android/contacts/list/ContactTileAdapter;->access$1500()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v13

    sget-object v14, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v13, v14, :cond_3

    .line 1043
    if-eqz p3, :cond_1a

    const/16 v13, 0x8

    :goto_e
    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto/16 :goto_3

    :cond_1a
    const/4 v13, 0x0

    goto :goto_e

    .line 1054
    :cond_1b
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->hideGridCheckBox()V

    .line 1055
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->hideListCheckBox()V

    goto/16 :goto_4

    .line 1065
    .restart local v6    # "lookupKey":Landroid/net/Uri;
    .restart local v8    # "pos":I
    :cond_1c
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->setItemSelected(Z)V

    goto/16 :goto_5

    .line 1069
    .end local v6    # "lookupKey":Landroid/net/Uri;
    .end local v8    # "pos":I
    :cond_1d
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->setItemSelected(Z)V

    goto/16 :goto_5

    .line 1094
    .restart local v5    # "isSelected":Z
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "view":Landroid/view/View;
    :cond_1e
    const v13, 0x7f020603

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1095
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c01cc

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_6

    .line 1100
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 1101
    const v13, 0x7f020605

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1103
    :cond_20
    const v13, 0x7f020602

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1104
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_6

    .line 1111
    .end local v5    # "isSelected":Z
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "view":Landroid/view/View;
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v13

    sget-object v14, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v13, v14, :cond_8

    .line 1112
    const v13, 0x7f0901bf

    invoke-virtual {v4, v13}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1113
    .restart local v12    # "view":Landroid/view/View;
    if-eqz v12, :cond_8

    .line 1114
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z
    invoke-static {v13}, Lcom/android/contacts/list/ContactTileAdapter;->access$1800(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 1115
    const v13, 0x7f020603

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 1117
    :cond_22
    const v13, 0x7f020602

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onLayoutForTiles(IIII)V
    .locals 15
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1203
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v5

    .line 1205
    .local v5, "count":I
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v8

    .line 1208
    .local v8, "mirroringEnabled":Z
    if-eqz v8, :cond_1

    .line 1209
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1210
    .local v1, "child1":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1211
    .local v4, "childWidth1":I
    add-int/lit8 v12, v5, -0x1

    mul-int v2, v4, v12

    .line 1216
    .end local v1    # "child1":Landroid/view/View;
    .end local v4    # "childWidth1":I
    .local v2, "childLeft":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_5

    .line 1217
    invoke-virtual {p0, v6}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1221
    .local v3, "childWidth":I
    const/4 v12, 0x0

    add-int v13, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v0, v2, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 1223
    if-eqz v8, :cond_2

    .line 1224
    sub-int/2addr v2, v3

    .line 1230
    :goto_2
    iget-object v12, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1231
    const v12, 0x7f0901bc

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1232
    .local v9, "nameView":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 1233
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 1234
    .local v11, "paint":Landroid/text/TextPaint;
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1235
    .local v7, "len":F
    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    int-to-float v10, v12

    .line 1237
    .local v10, "nameViewWidth":F
    cmpl-float v12, v7, v10

    if-lez v12, :cond_0

    .line 1238
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00dd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1216
    .end local v7    # "len":F
    .end local v9    # "nameView":Landroid/widget/TextView;
    .end local v10    # "nameViewWidth":F
    .end local v11    # "paint":Landroid/text/TextPaint;
    :cond_0
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1213
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childWidth":I
    .end local v6    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "childLeft":I
    goto :goto_0

    .line 1226
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "childWidth":I
    .restart local v6    # "i":I
    :cond_2
    add-int/2addr v2, v3

    goto :goto_2

    .line 1242
    :cond_3
    iget-object v12, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1243
    const v12, 0x7f0901bc

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1244
    .restart local v9    # "nameView":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 1245
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 1246
    .restart local v11    # "paint":Landroid/text/TextPaint;
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1247
    .restart local v7    # "len":F
    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    int-to-float v10, v12

    .line 1249
    .restart local v10    # "nameViewWidth":F
    cmpl-float v12, v7, v10

    if-lez v12, :cond_4

    .line 1250
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00dd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1252
    :cond_4
    const/16 v12, 0x10

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 1256
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "childWidth":I
    .end local v7    # "len":F
    .end local v9    # "nameView":Landroid/widget/TextView;
    .end local v10    # "nameViewWidth":F
    .end local v11    # "paint":Landroid/text/TextPaint;
    :cond_5
    return-void
.end method

.method private onMeasureForTiles(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1272
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1274
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    .line 1276
    .local v1, "childCount":I
    iget-object v10, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z
    invoke-static {v10}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1277
    iget-object v10, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01ee

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1280
    :cond_0
    if-nez v1, :cond_1

    .line 1282
    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    .line 1317
    :goto_0
    return-void

    .line 1296
    :cond_1
    iget-object v10, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactTileAdapter;->access$1400(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v11

    mul-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mRowPaddingAdjest:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactTileAdapter;->access$2000(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v11

    add-int v8, v10, v11

    .line 1300
    .local v8, "totalPaddingsInPixels":I
    sub-int v10, v9, v8

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v11

    div-int v5, v10, v11

    .line 1301
    .local v5, "imageSize":I
    iget-object v10, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v10

    mul-int/2addr v10, v5

    sub-int v10, v9, v10

    sub-int v7, v10, v8

    .line 1302
    .local v7, "remainder":I
    iget-object v10, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1305
    .local v6, "nameTextViewHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 1306
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1307
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int v11, v5, v10

    if-ge v4, v7, :cond_2

    const/4 v10, 0x1

    :goto_2
    add-int v3, v11, v10

    .line 1310
    .local v3, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int v2, v10, v11

    .line 1311
    .local v2, "childHeight":I
    const/high16 v10, 0x40000000

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x40000000

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1305
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1307
    .end local v2    # "childHeight":I
    .end local v3    # "childWidth":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 1316
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v6

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public configureRow(Ljava/util/ArrayList;ZZZ)V
    .locals 7
    .param p2, "isLastRow"    # Z
    .param p3, "isVoLTEEnabled"    # Z
    .param p4, "isPreviousRowOfDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    const/4 v0, 0x1

    .line 951
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v6, v0

    .line 953
    .local v6, "columnCount":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v3, v4, :cond_0

    .line 954
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v3

    if-ne v3, v0, :cond_2

    .line 955
    const/4 v6, 0x1

    .line 962
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .local v2, "columnCounter":I
    :goto_2
    if-ge v2, v6, :cond_4

    .line 963
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-object v1, v0

    .local v1, "entry":Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    :goto_3
    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 965
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;IZZZ)V

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 951
    .end local v1    # "entry":Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    .end local v2    # "columnCounter":I
    .end local v6    # "columnCount":I
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v6

    goto :goto_0

    .line 957
    .restart local v6    # "columnCount":I
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v6

    goto :goto_1

    .line 963
    .restart local v2    # "columnCounter":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 967
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1191
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 1197
    :pswitch_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1198
    :goto_0
    return-void

    .line 1194
    :pswitch_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles(IIII)V

    goto :goto_0

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1260
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 1266
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1267
    :goto_0
    return-void

    .line 1263
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(II)V

    goto :goto_0

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 1325
    return-void
.end method
