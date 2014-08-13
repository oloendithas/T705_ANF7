.class Lcom/android/contacts/quickcontact/QuickContactListFragment$1;
.super Landroid/widget/BaseAdapter;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private setButtonImage(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 553
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 562
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 556
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 557
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 558
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 559
    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 560
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setImageVisibility(Landroid/view/View;II)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "resId"    # I
    .param p3, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 566
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 570
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 572
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 573
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 195
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/quickcontact/Action;

    .line 202
    .local v5, "action":Lcom/android/contacts/quickcontact/Action;
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v16

    .line 204
    .local v16, "mimeType":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v26

    if-eqz v26, :cond_15

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_15

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.sds.vapp.voipcall"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    const/4 v4, 0x1

    .line 207
    .local v4, "IsChatONV":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 208
    const-string v16, "vnd.vapp.item/vnd.com.app.account"

    .line 211
    :cond_0
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->isPrimary()Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 215
    .local v14, "is_primary":Z
    const-string v26, "vnd.chaton.item/vnd.com.chaton.profile"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    if-eqz v26, :cond_16

    const v19, 0x7f0401be

    .line 223
    .local v19, "resource":I
    :goto_1
    if-eqz p2, :cond_19

    move-object/from16 v20, p2

    .line 227
    .local v20, "resultView":Landroid/view/View;
    :goto_2
    const v26, 0x1020014

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 229
    .local v22, "text1":Landroid/widget/TextView;
    const v26, 0x1020015

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 231
    .local v23, "text2":Landroid/widget/TextView;
    const v26, 0x7f0903f9

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 233
    .local v7, "actionsTopContainer":Landroid/view/View;
    const v26, 0x7f090151

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 236
    .local v6, "actionsContainer":Landroid/view/View;
    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const-string v27, "com.sec.feature.hovering_ui"

    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 237
    const/16 v26, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 239
    :cond_1
    if-eqz v23, :cond_2

    .line 240
    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 242
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    if-eqz v26, :cond_4

    if-eqz v22, :cond_4

    if-eqz v23, :cond_4

    .line 243
    const-string v26, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string v26, "vnd.android.cursor.item/im"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string v26, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string v26, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string v26, "vnd.android.cursor.item/website"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string v26, "vnd.chaton.item/vnd.com.chaton.profile"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 249
    :cond_3
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c0035

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 256
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const-string v26, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 260
    const-string v26, "call_message"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "instant_lettering"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 262
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 267
    :cond_6
    const-string v26, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 268
    const-string v26, "call_message"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    const-string v26, "feature_kt"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 272
    :cond_7
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    const-string v26, "vnd.chaton.item/vnd.com.chaton.profile"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 275
    const v26, 0x7f0903eb

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 277
    .local v25, "voiceCallActionButtonContainer":Landroid/view/View;
    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setFocusable(Z)V

    .line 279
    const v26, 0x7f0903f4

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_8

    .line 280
    const v26, 0x7f0903f4

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_8
    const v26, 0x7f0903f7

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 284
    .local v24, "videoCallActionButtonContainer":Landroid/view/View;
    const v26, 0x7f0903f6

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_9

    .line 285
    const v26, 0x7f0903f6

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_9
    const/16 v26, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 369
    .end local v24    # "videoCallActionButtonContainer":Landroid/view/View;
    .end local v25    # "voiceCallActionButtonContainer":Landroid/view/View;
    :cond_a
    :goto_3
    const-string v26, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_25

    const-string v26, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_25

    const-string v26, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_25

    const-string v26, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_25

    const-string v26, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIsTutorialMode()Z

    move-result v26

    if-eqz v26, :cond_25

    :cond_c
    const-string v26, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_25

    .line 476
    const-string v26, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3a

    .line 477
    if-eqz v23, :cond_d

    .line 478
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_d
    const v26, 0x7f0903f1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    .line 480
    const v26, 0x7f0903f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e006e

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    :cond_e
    :goto_4
    if-eqz v22, :cond_f

    .line 518
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v21

    .line 519
    .local v21, "subtitle":Ljava/lang/CharSequence;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_43

    .line 521
    const/16 v26, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    .end local v21    # "subtitle":Ljava/lang/CharSequence;
    :cond_f
    :goto_5
    const v26, 0x7f090158

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 530
    .local v18, "primary_indicator":Landroid/widget/ImageView;
    if-eqz v18, :cond_44

    if-eqz v14, :cond_44

    .line 531
    const v26, 0x7f090158

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 536
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$700(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 537
    if-eqz v22, :cond_11

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v26

    if-nez v26, :cond_12

    :cond_11
    if-eqz v23, :cond_13

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v26

    if-eqz v26, :cond_13

    .line 538
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$700(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v26

    const v27, 0x1020014

    const v28, 0x1020015

    invoke-virtual/range {v26 .. v28}, Lcom/sec/android/app/contacts/ListHoverManager;->setTextViewId(II)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$700(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/ListHoverManager;->setHoverPopup(Landroid/view/View;)V

    .line 542
    :cond_13
    const v26, 0x7f0903f3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_14

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v26

    if-eqz v26, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_45

    .line 544
    const v26, 0x7f0903f3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 549
    :cond_14
    :goto_7
    return-object v20

    .line 204
    .end local v4    # "IsChatONV":Z
    .end local v6    # "actionsContainer":Landroid/view/View;
    .end local v7    # "actionsTopContainer":Landroid/view/View;
    .end local v14    # "is_primary":Z
    .end local v18    # "primary_indicator":Landroid/widget/ImageView;
    .end local v19    # "resource":I
    .end local v20    # "resultView":Landroid/view/View;
    .end local v22    # "text1":Landroid/widget/TextView;
    .end local v23    # "text2":Landroid/widget/TextView;
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 216
    .restart local v4    # "IsChatONV":Z
    .restart local v14    # "is_primary":Z
    :cond_16
    const v19, 0x7f0401bd

    goto/16 :goto_1

    .line 219
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    if-eqz v26, :cond_18

    const v19, 0x7f0401c7

    .restart local v19    # "resource":I
    :goto_8
    goto/16 :goto_1

    .end local v19    # "resource":I
    :cond_18
    const v19, 0x7f0401c2

    goto :goto_8

    .line 223
    .restart local v19    # "resource":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_2

    .line 290
    .restart local v6    # "actionsContainer":Landroid/view/View;
    .restart local v7    # "actionsTopContainer":Landroid/view/View;
    .restart local v20    # "resultView":Landroid/view/View;
    .restart local v22    # "text1":Landroid/widget/TextView;
    .restart local v23    # "text2":Landroid/widget/TextView;
    :cond_1a
    const v26, 0x7f090152

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 292
    .local v9, "alternateActionContainer":Landroid/view/View;
    const/4 v11, 0x0

    .line 293
    .local v11, "alternateActionImage":Landroid/widget/ImageView;
    const/4 v8, 0x0

    .line 295
    .local v8, "alternateActionButton":Landroid/widget/ImageButton;
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v26

    if-eqz v26, :cond_1f

    const/4 v13, 0x1

    .line 297
    .local v13, "hasAlternateAction":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 298
    const v26, 0x7f09015d

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "alternateActionButton":Landroid/widget/ImageButton;
    check-cast v8, Landroid/widget/ImageButton;

    .line 300
    .restart local v8    # "alternateActionButton":Landroid/widget/ImageButton;
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    const-string v26, "feature_kor"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1b

    const-string v26, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    if-nez v26, :cond_1b

    if-eqz v13, :cond_1b

    .line 305
    const v26, 0x7f0205e9

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    :cond_1b
    :goto_a
    const v26, 0x7f09015b

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 321
    .local v10, "alternateActionDivider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 324
    if-eqz v10, :cond_1c

    .line 325
    if-eqz v13, :cond_21

    const/16 v26, 0x0

    :goto_b
    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_1c
    if-eqz v13, :cond_22

    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 330
    invoke-virtual {v9, v13}, Landroid/view/View;->setFocusable(Z)V

    .line 332
    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c003e

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c003e

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 340
    :cond_1d
    const-string v26, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    if-eqz v26, :cond_23

    .line 344
    const v26, 0x7f0903ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 345
    .local v15, "mDefaultView":Landroid/view/View;
    if-eqz v15, :cond_1e

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0e0202

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 350
    :cond_1e
    if-eqz v13, :cond_a

    .line 351
    const v26, 0x7f09015d

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e0201

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 295
    .end local v10    # "alternateActionDivider":Landroid/view/View;
    .end local v13    # "hasAlternateAction":Z
    .end local v15    # "mDefaultView":Landroid/view/View;
    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 308
    .restart local v13    # "hasAlternateAction":Z
    :cond_20
    const v26, 0x7f09015d

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "alternateActionImage":Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 310
    .restart local v11    # "alternateActionImage":Landroid/widget/ImageView;
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    const-string v26, "feature_kor"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1b

    const-string v26, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    if-nez v26, :cond_1b

    if-eqz v13, :cond_1b

    .line 315
    const v26, 0x7f0206e1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 325
    .restart local v10    # "alternateActionDivider":Landroid/view/View;
    :cond_21
    const/16 v26, 0x8

    goto/16 :goto_b

    .line 328
    :cond_22
    const/16 v26, 0x8

    goto/16 :goto_c

    .line 358
    :cond_23
    if-eqz v23, :cond_24

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0e0202

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 361
    :cond_24
    if-eqz v13, :cond_a

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0e0201

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 378
    .end local v8    # "alternateActionButton":Landroid/widget/ImageButton;
    .end local v9    # "alternateActionContainer":Landroid/view/View;
    .end local v10    # "alternateActionDivider":Landroid/view/View;
    .end local v11    # "alternateActionImage":Landroid/widget/ImageView;
    .end local v13    # "hasAlternateAction":Z
    :cond_25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 379
    .local v12, "currentLang":Ljava/lang/String;
    if-eqz v23, :cond_27

    .line 380
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_26

    const-string v26, "iw"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2a

    .line 382
    :cond_26
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_27
    :goto_d
    const-string v26, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2b

    const-string v26, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2b

    const-string v26, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2b

    .line 433
    const-string v26, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_33

    .line 434
    const v26, 0x7f0903f0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e0065

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 436
    const v26, 0x7f0903f0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    .line 465
    :cond_28
    :goto_e
    const-string v26, "feature_spr"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 466
    const v26, 0x7f0903ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 467
    const v26, 0x7f0903ef

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 468
    const v26, 0x7f0903ee

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 469
    const v26, 0x7f09015b

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_29

    .line 470
    const v26, 0x7f09015b

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_29
    const v26, 0x7f090152

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 473
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    const v26, 0x7f090152

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 384
    :cond_2a
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 385
    .local v17, "phoneNumberE164":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 396
    .end local v17    # "phoneNumberE164":Ljava/lang/String;
    :cond_2b
    const v26, 0x7f0903ed

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    .line 399
    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->isVoLTEEnabled:Z
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$400()Z

    move-result v26

    if-eqz v26, :cond_31

    .line 400
    const-string v26, "feature_kor"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_30

    .line 401
    const-string v26, "feature_skt"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2e

    .line 402
    const v26, 0x7f0903ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f02068a

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    .line 426
    :cond_2c
    :goto_f
    sget-object v26, Lcom/android/contacts/quickcontact/QuickContactActivity;->capability:Ljava/lang/String;

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2d

    const-string v26, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2d

    sget-boolean v26, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v26, :cond_2d

    .line 427
    const v26, 0x7f0903ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    const v27, 0x7f020249

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundResource(I)V

    .line 429
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mHasPhone:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$500(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    if-nez v26, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mHasSms:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$600(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_28

    .line 430
    const v26, 0x7f0903ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f0206e1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto/16 :goto_e

    .line 405
    :cond_2e
    const-string v26, "feature_kt"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2f

    .line 407
    const v26, 0x7f0903ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f02067b

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto/16 :goto_f

    .line 410
    :cond_2f
    const-string v26, "feature_lgt"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2c

    .line 412
    const v26, 0x7f0903ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f02067c

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto/16 :goto_f

    .line 417
    :cond_30
    const v26, 0x7f0903ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f020679

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto/16 :goto_f

    .line 421
    :cond_31
    const v26, 0x7f0903ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    if-eqz v26, :cond_32

    const v26, 0x7f0205e7

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto/16 :goto_f

    :cond_32
    const v26, 0x7f020679

    goto :goto_10

    .line 437
    :cond_33
    const-string v26, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_34

    .line 438
    const v26, 0x7f0903ef

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e039c

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 440
    const v26, 0x7f0903ef

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_e

    .line 442
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 443
    const-string v26, "feature_skt"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_35

    .line 444
    const v26, 0x7f0903ee

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f0206e5

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    .line 460
    :goto_11
    const v26, 0x7f0903ee

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e031b

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 462
    const v26, 0x7f0903ee

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_e

    .line 446
    :cond_35
    const-string v26, "feature_kt"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_36

    .line 447
    const v26, 0x7f0903ee

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f0206e3

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto :goto_11

    .line 449
    :cond_36
    const-string v26, "feature_lgt"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_37

    .line 450
    const v26, 0x7f0903ee

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f0206e4

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto :goto_11

    .line 452
    :cond_37
    const-string v26, "feature_vzw"

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_38

    .line 453
    const v26, 0x7f0903ee

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f0206e6

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto/16 :goto_11

    .line 456
    :cond_38
    const v26, 0x7f0903ee

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v26

    if-eqz v26, :cond_39

    const v26, 0x7f0205ea

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto/16 :goto_11

    :cond_39
    const v26, 0x7f0206e2

    goto :goto_12

    .line 482
    .end local v12    # "currentLang":Ljava/lang/String;
    :cond_3a
    const-string v26, "vnd.android.cursor.item/im"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3c

    .line 483
    if-eqz v23, :cond_3b

    .line 484
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_3b
    const v26, 0x7f0903f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f0206e0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    .line 487
    const v26, 0x7f0903f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e006f

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 489
    const v26, 0x7f0903f1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_4

    .line 490
    :cond_3c
    const-string v26, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3e

    .line 491
    if-eqz v23, :cond_3d

    .line 492
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :cond_3d
    const v26, 0x7f0903f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f0206d2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    .line 495
    const v26, 0x7f0903f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e0174

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 497
    const v26, 0x7f0903f1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_4

    .line 498
    :cond_3e
    const-string v26, "vnd.android.cursor.item/website"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_40

    .line 499
    if-eqz v23, :cond_3f

    .line 500
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_3f
    const v26, 0x7f0903f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f020696

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    .line 503
    const v26, 0x7f0903f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e0124

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 505
    const v26, 0x7f0903f1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_4

    .line 506
    :cond_40
    const-string v26, "vnd.vapp.item/vnd.com.app.account"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_42

    .line 507
    if-eqz v23, :cond_41

    .line 508
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_41
    const v26, 0x7f0903f2

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    .line 510
    const v26, 0x7f0903f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v27, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e0374

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 513
    :cond_42
    if-eqz v23, :cond_e

    .line 514
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 523
    .restart local v21    # "subtitle":Ljava/lang/CharSequence;
    :cond_43
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 532
    .end local v21    # "subtitle":Ljava/lang/CharSequence;
    .restart local v18    # "primary_indicator":Landroid/widget/ImageView;
    :cond_44
    if-eqz v18, :cond_10

    .line 533
    const v26, 0x7f090158

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 546
    :cond_45
    const v26, 0x7f0903f3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
.end method
