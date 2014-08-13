.class public Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private searchNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7217
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 7218
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7219
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    .line 7220
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p5, "sNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 7223
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 7224
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7225
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    .line 7226
    iput-object p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->searchNumber:Ljava/lang/String;

    .line 7227
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 7237
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 44
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 7243
    if-nez p2, :cond_1

    .line 7244
    new-instance v16, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;)V

    .line 7246
    .local v16, "cVH":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v7, "layout_inflater"

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->vi:Landroid/view/LayoutInflater;

    .line 7247
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->vi:Landroid/view/LayoutInflater;

    const v7, 0x7f0400a7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 7248
    const v3, 0x7f09021d

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->mFullnameView:Landroid/widget/LinearLayout;

    .line 7249
    const v3, 0x7f09021b

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->mContactPhoto:Landroid/widget/ImageView;

    .line 7250
    const v3, 0x7f09021d

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text2:Landroid/widget/LinearLayout;

    .line 7251
    const v3, 0x7f090227

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text4:Landroid/widget/LinearLayout;

    .line 7252
    const v3, 0x7f090221

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text3:Landroid/widget/LinearLayout;

    .line 7253
    const v3, 0x7f090223

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text3_1line_only:Landroid/widget/LinearLayout;

    .line 7254
    const v3, 0x7f09021e

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    .line 7255
    const v3, 0x7f09021f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_color:Landroid/widget/TextView;

    .line 7256
    const v3, 0x7f090220

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_end:Landroid/widget/TextView;

    .line 7257
    const v3, 0x7f090222

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    .line 7258
    const v3, 0x7f090229

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_color:Landroid/widget/TextView;

    .line 7259
    const v3, 0x7f09022a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_end:Landroid/widget/TextView;

    .line 7260
    const v3, 0x7f090228

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_type:Landroid/widget/TextView;

    .line 7261
    const v3, 0x7f090224

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_1line_only:Landroid/widget/TextView;

    .line 7262
    const v3, 0x7f090225

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_color_1line_only:Landroid/widget/TextView;

    .line 7263
    const v3, 0x7f090226

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_end_1line_only:Landroid/widget/TextView;

    .line 7265
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7271
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    .line 7272
    .local v42, "ti":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 7273
    .local v15, "args_number":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v27

    .line 7274
    .local v27, "mlength":I
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 7275
    .local v22, "inumber":Ljava/lang/String;
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhoneType()I

    move-result v34

    .line 7276
    .local v34, "phoneType":I
    const-string v3, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7716
    :cond_0
    :goto_1
    return-object p2

    .line 7267
    .end local v15    # "args_number":Ljava/lang/String;
    .end local v16    # "cVH":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;
    .end local v22    # "inumber":Ljava/lang/String;
    .end local v27    # "mlength":I
    .end local v34    # "phoneType":I
    .end local v42    # "ti":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;

    .restart local v16    # "cVH":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;
    goto :goto_0

    .line 7279
    .restart local v15    # "args_number":Ljava/lang/String;
    .restart local v22    # "inumber":Ljava/lang/String;
    .restart local v27    # "mlength":I
    .restart local v34    # "phoneType":I
    .restart local v42    # "ti":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    :cond_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    .line 7280
    .local v41, "temp_length":I
    const/16 v36, 0x0

    .line 7281
    .local v36, "photoBm":Landroid/graphics/Bitmap;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    .line 7282
    .local v23, "inumberLen":I
    const/16 v31, 0x0

    .line 7283
    .local v31, "numberType":I
    const/16 v29, 0x0

    .line 7284
    .local v29, "numberLabel":Ljava/lang/CharSequence;
    const/16 v32, 0x0

    .line 7286
    .local v32, "numbertype":Ljava/lang/CharSequence;
    const/16 v28, 0x0

    .line 7287
    .local v28, "numberIsSim":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v7

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getAccountType(I)Ljava/lang/String;
    invoke-static {v3, v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)Ljava/lang/String;

    move-result-object v13

    .line 7290
    .local v13, "accountType":Ljava/lang/String;
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v3

    if-eqz v3, :cond_7

    .line 7291
    new-instance v33, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7292
    .local v33, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7293
    const/16 v25, 0x0

    .line 7294
    .local v25, "mLoadPhotoAsyncTask":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;
    new-instance v25, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;

    .end local v25    # "mLoadPhotoAsyncTask":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v7

    int-to-long v7, v7

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v7, v8, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;JLandroid/view/View;)V

    .line 7295
    .restart local v25    # "mLoadPhotoAsyncTask":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;
    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 7308
    .end local v25    # "mLoadPhotoAsyncTask":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;
    .end local v33    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_2
    const-string v3, "search_result_to_contact"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7309
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SearchListAdapter NAME_RESULT ti.getContactID() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7311
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v3

    if-ltz v3, :cond_8

    .line 7312
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->mContactPhoto:Landroid/widget/ImageView;

    new-instance v7, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v7, v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7333
    :cond_3
    :goto_3
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 7335
    :pswitch_0
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text2:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7336
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text4:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7337
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 7338
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7341
    :goto_4
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_color:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7342
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_end:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7343
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7345
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_color:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7346
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_end:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7348
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7349
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_type:Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 7297
    .restart local v33    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v7

    int-to-long v7, v7

    move-object/from16 v0, v33

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static {v3, v7, v8, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 7298
    if-eqz v36, :cond_6

    .line 7299
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->mContactPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 7301
    :cond_6
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->mContactPhoto:Landroid/widget/ImageView;

    const v7, 0x7f0203a6

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 7305
    .end local v33    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->mContactPhoto:Landroid/widget/ImageView;

    const v7, 0x7f0203a6

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 7329
    :cond_8
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->mContactPhoto:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_3

    .line 7340
    :cond_9
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    const v7, 0x7f0e02d2

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 7352
    :pswitch_1
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->mFullnameView:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7353
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text2:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7354
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text4:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7355
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Contact_SeparateLookupTable4ChinaDialerSearch"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsExistAlphabetSearchResult:Z
    invoke-static/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->access$5400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 7358
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7359
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_color:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7361
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorStringGetter()Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

    move-result-object v17

    .line 7362
    .local v17, "colorStringGetter":Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;
    if-eqz v17, :cond_a

    .line 7363
    const v3, 0x7f0b00e7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->setHightLightColor(I)I

    .line 7364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_end:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7}, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->setColorForTextView(Landroid/content/res/Resources;Landroid/widget/TextView;)Z

    .line 7459
    .end local v17    # "colorStringGetter":Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;
    :cond_a
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Contact_SeparateLookupTable4ChinaDialerSearch"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "hongkong_taiwan_dialer"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 7461
    :cond_b
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 7463
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_color:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7464
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_end:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7466
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7467
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v3

    if-lez v3, :cond_1e

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 7468
    if-nez v34, :cond_1c

    .line 7469
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7470
    .local v4, "phoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 7471
    .local v35, "phonesCursor":Landroid/database/Cursor;
    if-eqz v35, :cond_e

    .line 7472
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 7473
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7475
    :cond_d
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 7497
    .end local v4    # "phoneUri":Landroid/net/Uri;
    .end local v35    # "phonesCursor":Landroid/database/Cursor;
    :cond_e
    :goto_6
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_type:Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7575
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7576
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 7366
    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v7, "iw"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 7373
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getActionCode()Ljava/lang/String;

    move-result-object v14

    .line 7374
    .local v14, "actionCode":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v40

    .line 7375
    .local v40, "startMatching":I
    if-eqz v40, :cond_11

    .line 7376
    const/16 v39, 0x0

    .line 7378
    .local v39, "spaceMatching":I
    :cond_10
    const/16 v3, 0x5e

    add-int/lit8 v7, v39, 0x1

    invoke-virtual {v14, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v39

    .line 7379
    add-int/lit8 v3, v39, 0x1

    invoke-virtual {v14, v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v40

    .line 7380
    add-int/lit8 v3, v39, 0x1

    move/from16 v0, v40

    if-eq v0, v3, :cond_11

    const/4 v3, -0x1

    move/from16 v0, v39

    if-ne v0, v3, :cond_10

    .line 7383
    .end local v39    # "spaceMatching":I
    :cond_11
    add-int v21, v40, v27

    .line 7384
    .local v21, "endMatching":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchSubName:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7385
    new-instance v26, Landroid/text/SpannableString;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7386
    .local v26, "mSpannableName":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00e7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x12

    move-object/from16 v0, v26

    move/from16 v1, v40

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7388
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 7390
    .end local v14    # "actionCode":Ljava/lang/String;
    .end local v21    # "endMatching":I
    .end local v26    # "mSpannableName":Landroid/text/SpannableString;
    .end local v40    # "startMatching":I
    :cond_12
    const-string v3, "hongkong_taiwan_dialer"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsExistAlphabetSearchResult:Z
    invoke-static/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->access$5400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 7391
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v43

    .line 7392
    .local v43, "tmpDisplayName":Ljava/lang/String;
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getSelection()Ljava/lang/String;

    move-result-object v38

    .line 7393
    .local v38, "selection":Ljava/lang/String;
    if-eqz v38, :cond_13

    .line 7394
    move-object/from16 v0, v43

    move-object/from16 v1, v38

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getStartEndColorLocale(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5600(Ljava/lang/String;Ljava/lang/String;)V

    .line 7395
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mStartColor:I
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5700()I

    move-result v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setColorStart(I)V

    .line 7396
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mEndColor:I
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5800()I

    move-result v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setColorEnd(I)V

    .line 7397
    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mStartColor:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5702(I)I

    .line 7398
    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mEndColor:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5802(I)I

    .line 7403
    :goto_8
    if-eqz v43, :cond_a

    .line 7404
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorStart()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7405
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_color:Landroid/widget/TextView;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorStart()I

    move-result v8

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorEnd()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7406
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_end:Landroid/widget/TextView;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorEnd()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 7400
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setColorStart(I)V

    .line 7401
    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setColorEnd(I)V

    goto :goto_8

    .line 7409
    .end local v38    # "selection":Ljava/lang/String;
    .end local v43    # "tmpDisplayName":Ljava/lang/String;
    :cond_14
    const/16 v40, 0x0

    .restart local v40    # "startMatching":I
    const/16 v21, 0x0

    .line 7411
    .restart local v21    # "endMatching":I
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getIsExistAlphabetSearchResult()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 7413
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v40

    .line 7414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v21, v40, v3

    .line 7436
    :goto_9
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v19

    .line 7437
    .local v19, "displayName":Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 7438
    if-ltz v40, :cond_1b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v21

    if-lt v3, v0, :cond_1b

    move/from16 v0, v40

    move/from16 v1, v21

    if-gt v0, v1, :cond_1b

    .line 7439
    new-instance v26, Landroid/text/SpannableString;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7443
    .restart local v26    # "mSpannableName":Landroid/text/SpannableString;
    :try_start_0
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    move-object/from16 v0, v19

    move/from16 v1, v40

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move-object/from16 v0, v19

    invoke-static {v3, v0, v7}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v37

    .line 7444
    .local v37, "prefixForIndian":[C
    if-eqz v37, :cond_15

    .line 7445
    move-object/from16 v0, v37

    array-length v3, v0

    add-int v21, v40, v3

    .line 7446
    :cond_15
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00e7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x12

    move-object/from16 v0, v26

    move/from16 v1, v40

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7449
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 7450
    .end local v37    # "prefixForIndian":[C
    :catch_0
    move-exception v20

    .line 7451
    .local v20, "e":Ljava/lang/IndexOutOfBoundsException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string v7, "IndexOutOfBoundsException in setSpan"

    invoke-static {v3, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 7416
    .end local v19    # "displayName":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v26    # "mSpannableName":Landroid/text/SpannableString;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 7417
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v40

    .line 7418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v21, v40, v3

    goto/16 :goto_9

    .line 7420
    :cond_17
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v40

    .line 7421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v21, v40, v3

    goto/16 :goto_9

    .line 7425
    :cond_18
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getActionCode()Ljava/lang/String;

    move-result-object v14

    .line 7426
    .restart local v14    # "actionCode":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v40

    .line 7427
    if-eqz v40, :cond_1a

    .line 7428
    const/16 v39, 0x0

    .line 7430
    .restart local v39    # "spaceMatching":I
    :cond_19
    const/16 v3, 0x5e

    add-int/lit8 v7, v39, 0x1

    invoke-virtual {v14, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v39

    .line 7431
    add-int/lit8 v3, v39, 0x1

    invoke-virtual {v14, v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v40

    .line 7432
    add-int/lit8 v3, v39, 0x1

    move/from16 v0, v40

    if-eq v0, v3, :cond_1a

    const/4 v3, -0x1

    move/from16 v0, v39

    if-ne v0, v3, :cond_19

    .line 7434
    .end local v39    # "spaceMatching":I
    :cond_1a
    add-int v21, v40, v27

    goto/16 :goto_9

    .line 7454
    .end local v14    # "actionCode":Ljava/lang/String;
    .restart local v19    # "displayName":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 7478
    .end local v19    # "displayName":Ljava/lang/String;
    .end local v21    # "endMatching":I
    .end local v40    # "startMatching":I
    :cond_1c
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_1d

    .line 7479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_6

    .line 7481
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0e03d9

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_6

    .line 7483
    :cond_1e
    if-nez v34, :cond_20

    .line 7484
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7486
    .restart local v4    # "phoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 7487
    .restart local v35    # "phonesCursor":Landroid/database/Cursor;
    if-eqz v35, :cond_e

    .line 7488
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 7489
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7491
    :cond_1f
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 7495
    .end local v4    # "phoneUri":Landroid/net/Uri;
    .end local v35    # "phonesCursor":Landroid/database/Cursor;
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_6

    .line 7499
    :cond_21
    const-string v3, "content://com.android.contacts/contacts/"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "/data"

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 7503
    .local v6, "URI_PHONE":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    .line 7506
    .local v5, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_1
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6000()[Ljava/lang/String;

    move-result-object v7

    const-string v3, "mimetype"

    const-string v8, "=\'"

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "\'"

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 7509
    .local v18, "cur_phone":Landroid/database/Cursor;
    if-eqz v18, :cond_25

    .line 7511
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 7512
    const-string v3, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 7513
    const-string v3, "data2"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 7514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v31 .. v31}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7515
    :cond_22
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 7516
    const-string v3, "is_super_primary"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_22

    .line 7518
    const-string v3, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 7520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v7, "data2"

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v29

    .line 7527
    :cond_23
    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 7530
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v3

    if-lez v3, :cond_29

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 7531
    if-nez v31, :cond_27

    .line 7532
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7534
    .restart local v4    # "phoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 7535
    .restart local v35    # "phonesCursor":Landroid/database/Cursor;
    if-eqz v35, :cond_25

    .line 7536
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 7537
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7539
    :cond_24
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 7566
    .end local v4    # "phoneUri":Landroid/net/Uri;
    .end local v18    # "cur_phone":Landroid/database/Cursor;
    .end local v35    # "phonesCursor":Landroid/database/Cursor;
    :cond_25
    :goto_a
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    .line 7568
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 7570
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_color:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7571
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_end:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7573
    :cond_26
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_type:Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 7527
    .restart local v18    # "cur_phone":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 7563
    .end local v18    # "cur_phone":Landroid/database/Cursor;
    :catch_1
    move-exception v20

    .line 7564
    .local v20, "e":Landroid/os/RemoteException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SearchListAdapter2 providerClient has exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 7542
    .end local v20    # "e":Landroid/os/RemoteException;
    .restart local v18    # "cur_phone":Landroid/database/Cursor;
    :cond_27
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_28

    .line 7543
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v31 .. v31}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_a

    .line 7545
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0e03d9

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_a

    .line 7548
    :cond_29
    if-nez v31, :cond_2b

    .line 7549
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7551
    .restart local v4    # "phoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 7552
    .restart local v35    # "phonesCursor":Landroid/database/Cursor;
    if-eqz v35, :cond_25

    .line 7553
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 7554
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7556
    :cond_2a
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 7560
    .end local v4    # "phoneUri":Landroid/net/Uri;
    .end local v35    # "phonesCursor":Landroid/database/Cursor;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v31 .. v31}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v29

    goto/16 :goto_a

    .line 7580
    .end local v5    # "providerClient":Landroid/content/ContentProviderClient;
    .end local v6    # "URI_PHONE":Landroid/net/Uri;
    .end local v18    # "cur_phone":Landroid/database/Cursor;
    :pswitch_2
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text2:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7581
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text4:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7582
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 7583
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7586
    :goto_b
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_color:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7587
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name_end:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7588
    if-ltz v41, :cond_30

    move/from16 v0, v41

    move/from16 v1, v23

    if-gt v0, v1, :cond_30

    .line 7589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 7590
    new-instance v30, Landroid/text/SpannableString;

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7591
    .local v30, "numberResultString":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00ec

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v27, v41

    const/16 v8, 0x12

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v3, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7593
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7603
    .end local v30    # "numberResultString":Landroid/text/SpannableString;
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7604
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v3

    if-lez v3, :cond_33

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 7605
    if-nez v34, :cond_31

    .line 7606
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7607
    .restart local v4    # "phoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 7608
    .restart local v35    # "phonesCursor":Landroid/database/Cursor;
    if-eqz v35, :cond_2d

    .line 7609
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 7610
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7612
    :cond_2c
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 7635
    .end local v4    # "phoneUri":Landroid/net/Uri;
    .end local v35    # "phonesCursor":Landroid/database/Cursor;
    :cond_2d
    :goto_d
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_type:Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7638
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_type:Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7639
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 7585
    :cond_2e
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    const v7, 0x7f0e02d2

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 7595
    :cond_2f
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7596
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_color:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7597
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_end:Landroid/widget/TextView;

    add-int v7, v27, v41

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 7601
    :cond_30
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 7615
    :cond_31
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_32

    .line 7616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_d

    .line 7618
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0e03d9

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_d

    .line 7621
    :cond_33
    if-nez v34, :cond_35

    .line 7622
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7624
    .restart local v4    # "phoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 7625
    .restart local v35    # "phonesCursor":Landroid/database/Cursor;
    if-eqz v35, :cond_2d

    .line 7626
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 7627
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 7629
    :cond_34
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 7633
    .end local v4    # "phoneUri":Landroid/net/Uri;
    .end local v35    # "phonesCursor":Landroid/database/Cursor;
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_d

    .line 7643
    :pswitch_3
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text2:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7644
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text4:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7652
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text3_1line_only:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_38

    .line 7653
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text3:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7654
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text3_1line_only:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7655
    if-ltz v41, :cond_37

    move/from16 v0, v41

    move/from16 v1, v23

    if-gt v0, v1, :cond_37

    .line 7656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 7657
    new-instance v24, Landroid/text/SpannableString;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7658
    .local v24, "logResultString":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00ec

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v27, v41

    const/16 v8, 0x12

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v3, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7660
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_1line_only:Landroid/widget/TextView;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7687
    .end local v24    # "logResultString":Landroid/text/SpannableString;
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7688
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 7662
    :cond_36
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_1line_only:Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7663
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_color_1line_only:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7664
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_end_1line_only:Landroid/widget/TextView;

    add-int v7, v27, v41

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 7668
    :cond_37
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_1line_only:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 7671
    :cond_38
    if-ltz v41, :cond_3a

    move/from16 v0, v41

    move/from16 v1, v23

    if-gt v0, v1, :cond_3a

    .line 7672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 7673
    new-instance v24, Landroid/text/SpannableString;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7674
    .restart local v24    # "logResultString":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00ec

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v27, v41

    const/16 v8, 0x12

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v3, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7676
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 7678
    .end local v24    # "logResultString":Landroid/text/SpannableString;
    :cond_39
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7679
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_color:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7680
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number_end:Landroid/widget/TextView;

    add-int v7, v27, v41

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 7683
    :cond_3a
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_number:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 7693
    :pswitch_4
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text3:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7694
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->row_text4:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7695
    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3b

    .line 7696
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 7698
    :cond_3b
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CSearchListViewHolder;->dialer_searchdialog_name:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 7333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setListAndNotify(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7230
    .local p1, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    .line 7231
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    .line 7232
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 7233
    return-void
.end method
