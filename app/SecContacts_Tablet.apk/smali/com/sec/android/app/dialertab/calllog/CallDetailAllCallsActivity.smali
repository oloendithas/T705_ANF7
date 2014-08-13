.class public Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;
.super Landroid/app/Activity;
.source "CallDetailAllCallsActivity.java"


# static fields
.field public static final BLOCKEDLOG_DETAIL_ALL:Ljava/lang/String; = "VIP_BlockedLogs_ALL"

.field private static final TAG:Ljava/lang/String; = "CallDetailAllCallsActivity"

.field public static bVIP_BLog_ALL:Z

.field private static mLogNumber:I


# instance fields
.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mIntent:Landroid/content/Intent;

.field private mListView:Landroid/widget/ListView;

.field mResources:Landroid/content/res/Resources;

.field private mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->bVIP_BLog_ALL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 21

    .prologue
    .line 314
    const-string v17, "CallDetailAllCallsActivity"

    const-string v18, "configureActionBar"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 318
    .local v2, "actionBar":Landroid/app/ActionBar;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 319
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const v17, 0x7f040046

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 321
    .local v3, "actionBarCustomView":Landroid/view/View;
    const v17, 0x7f09010a

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 322
    .local v10, "nameText":Landroid/widget/TextView;
    const v17, 0x7f09010b

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 323
    .local v12, "numberText":Landroid/widget/TextView;
    const v17, 0x7f090139

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 327
    .local v4, "cityIdText":Landroid/widget/TextView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 328
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 329
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 331
    const v17, 0x7f090137

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 332
    .local v14, "previousActivity":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 335
    const-string v17, "feature_cnam"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "feature_kor"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 337
    :cond_0
    new-instance v17, Landroid/app/ActionBar$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x13

    invoke-direct/range {v17 .. v20}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 340
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 341
    new-instance v17, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "firstLine"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "firstLine":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "secondLine"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 351
    .local v15, "secondLine":Ljava/lang/String;
    if-eqz v15, :cond_1

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 352
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "thirdLine"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 356
    .local v16, "thirdLine":Ljava/lang/String;
    if-eqz v16, :cond_2

    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 357
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_2
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 362
    .local v5, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 364
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_3

    .line 365
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 366
    .local v9, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v17, -0x3fc00000

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 367
    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .end local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 370
    .restart local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v17, -0x3fc00000

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 371
    invoke-virtual {v12, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .end local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 374
    .restart local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v17, -0x3f600000

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 375
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    const-string v17, "CallDetailAllCallsActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "configureActionBar, dm.density : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mlp.topMargin : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 380
    const/16 v17, 0x1

    const/high16 v18, 0x41400000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 381
    const/16 v17, 0x1

    const/high16 v18, 0x41400000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 382
    const/16 v17, 0x1

    const/high16 v18, 0x41200000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 386
    .end local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v8, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 388
    .local v8, "mDpiSize":I
    const-string v17, "feature_cnam"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x8

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x8

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_4

    .line 391
    iget v0, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    const/16 v18, 0xf0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x140

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    .line 392
    const/16 v17, 0x1

    const/high16 v18, 0x41800000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 399
    :cond_4
    :goto_0
    const-string v17, "feature_kor"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 400
    if-eqz v15, :cond_8

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 401
    const/16 v11, 0x11

    .line 402
    .local v11, "nameTextSize":I
    const/16 v13, 0xd

    .line 404
    .local v13, "numberTextSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 405
    const/16 v11, 0x11

    .line 410
    :goto_1
    const/16 v17, 0x1

    int-to-float v0, v11

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 411
    const/16 v17, 0x1

    int-to-float v0, v13

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    const-string v17, "#FFFFFF"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    const-string v17, "#bacbd8"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    .end local v13    # "numberTextSize":I
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 422
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 423
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 425
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 426
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 427
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 454
    .end local v5    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "mDpiSize":I
    .end local v11    # "nameTextSize":I
    .end local v16    # "thirdLine":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 395
    .restart local v5    # "dm":Landroid/util/DisplayMetrics;
    .restart local v8    # "mDpiSize":I
    .restart local v16    # "thirdLine":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    const/high16 v18, 0x41980000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 407
    .restart local v11    # "nameTextSize":I
    .restart local v13    # "numberTextSize":I
    :cond_7
    const/16 v11, 0x13

    goto :goto_1

    .line 416
    .end local v11    # "nameTextSize":I
    .end local v13    # "numberTextSize":I
    :cond_8
    const/16 v11, 0x13

    .line 417
    .restart local v11    # "nameTextSize":I
    const/16 v17, 0x1

    int-to-float v0, v11

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    const-string v17, "#FFFFFF"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 430
    .end local v5    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "firstLine":Ljava/lang/String;
    .end local v8    # "mDpiSize":I
    .end local v11    # "nameTextSize":I
    .end local v15    # "secondLine":Ljava/lang/String;
    .end local v16    # "thirdLine":Ljava/lang/String;
    :cond_9
    const/16 v17, 0xc

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "firstLine"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 435
    .restart local v6    # "firstLine":Ljava/lang/String;
    const-string v17, "feature_is_fonblet"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "feature_ctc"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_a
    sget v17, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    .line 437
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->replaceCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 440
    :cond_b
    const-string v17, "phone_number_locator"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "  |  "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 441
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->replacePhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 444
    :cond_c
    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "secondLine"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 446
    .restart local v15    # "secondLine":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 447
    const-string v17, "phone_number_locator"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "  |  "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 448
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->replacePhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 450
    :cond_d
    invoke-virtual {v2, v15}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private onHomeSelected()V
    .locals 0

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 476
    return-void
.end method

.method public static removeCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ss"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 281
    const-string v1, ""

    .line 282
    .local v1, "mLog":Ljava/lang/String;
    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget v2, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    if-le v2, v4, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "i":I
    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 286
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    .line 290
    .end local v0    # "i":I
    .end local p0    # "ss":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static replaceCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "ss"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x29

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 239
    const-string v3, ""

    .line 240
    .local v3, "mLog":Ljava/lang/String;
    const-string v5, ")"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    const-string v5, "("

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    const-string v5, "("

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    if-le v5, v7, :cond_1

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "i":I
    const-string v5, "("

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object p0, v3

    .line 276
    .end local v0    # "i":I
    .end local p0    # "ss":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 247
    .restart local p0    # "ss":Ljava/lang/String;
    :cond_1
    sget v5, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    if-le v5, v7, :cond_0

    .line 248
    const-string v5, "phone_number_locator"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "  |  "

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 249
    const-string v5, "("

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ")"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "("

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ge v5, v6, :cond_2

    const-string v5, ")"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "|"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 250
    const/4 v0, 0x0

    .line 251
    .restart local v0    # "i":I
    const-string v5, "("

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v0    # "i":I
    :goto_1
    move-object p0, v3

    .line 274
    goto :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x0

    .line 255
    .restart local v0    # "i":I
    const-string v5, "|"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v5, -0x2

    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 257
    .local v1, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    goto :goto_1

    .line 260
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "locale":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v4, "mLog_builder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v5, "ar"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "fa"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ur"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "iw"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 264
    :cond_4
    const-string v5, " \u200f("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    sget v5, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 268
    :cond_5
    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    sget v5, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private replacePhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "mLogInfo"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, "mIndex":I
    const/4 v5, 0x0

    .line 481
    .local v5, "mReplaceInfo":Ljava/lang/String;
    const/4 v3, 0x0

    .line 482
    .local v3, "mNumberCount":Ljava/lang/String;
    const/4 v4, 0x0

    .line 483
    .local v4, "mNumberType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 484
    .local v6, "mReplacePnl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v2, "mLogInfo_builder":Ljava/lang/StringBuilder;
    const-string v7, "("

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ")"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 487
    const-string v7, "("

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, ")"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 488
    const-string v7, "("

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 499
    :goto_0
    :try_start_0
    invoke-static {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 500
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->closeLocationBinFile()V

    .line 502
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    if-eqz v3, :cond_0

    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    if-eqz v4, :cond_1

    .line 506
    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1
    const-string v7, "  |  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 519
    :goto_1
    return-object v5

    .line 489
    :cond_2
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 490
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 491
    invoke-virtual {p1, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 492
    add-int/lit8 v7, v1, 0x2

    const-string v8, "|"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 494
    :cond_3
    const-string v7, "|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v1, v7, -0x2

    .line 495
    invoke-virtual {p1, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    move-object v5, p1

    .line 516
    const-string v7, "CallDetailAllCallsActivity"

    const-string v8, "getNumberProvinceAndCity exception"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 310
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->configureActionBar()V

    .line 312
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mIntent:Landroid/content/Intent;

    .line 95
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIP_BlockedLogs_ALL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->bVIP_BLog_ALL:Z

    .line 98
    :cond_0
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->configureActionBar()V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 300
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/android/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 306
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 464
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 470
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 466
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->onHomeSelected()V

    .line 467
    const/4 v0, 0x1

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 18

    .prologue
    .line 105
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 107
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "VIP_BlockedLogs_ALL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->bVIP_BLog_ALL:Z

    .line 110
    :cond_0
    const v1, 0x7f090096

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    .line 112
    const/4 v4, 0x0

    .line 113
    .local v4, "sendSelection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "number"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 114
    .local v17, "strNumber":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "currentCountryIso":Ljava/lang/String;
    const-string v1, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mResources:Landroid/content/res/Resources;

    .line 118
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->bVIP_BLog_ALL:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v1, :cond_9

    .line 120
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "number="

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ") AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "(reject_flag=1)"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    :goto_0
    const-string v6, ""

    .line 145
    .local v6, "sortOrder":Ljava/lang/String;
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 146
    const-string v6, "date DESC, _id DESC"

    .line 154
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_d

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sput v1, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    .line 165
    :goto_2
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->bVIP_BLog_ALL:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v1, :cond_2

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    sget v1, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    if-nez v1, :cond_2

    .line 168
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 171
    :cond_2
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mVoiceMailNumber:Ljava/lang/String;

    const/16 v13, 0x226

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 176
    const-string v1, "feature_folder_type"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 185
    :cond_3
    :goto_3
    const-string v1, "CallDetailAllCallsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boram mCursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/android/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 191
    :cond_4
    const-string v1, "feature_is_fonblet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 192
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "firstLine"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 193
    .local v15, "mFirstLine":Ljava/lang/String;
    sget v1, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    .line 194
    invoke-static {v15}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->replaceCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 196
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    .end local v15    # "mFirstLine":Ljava/lang/String;
    :cond_7
    :goto_4
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->bVIP_BLog_ALL:Z

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_8

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 234
    :cond_8
    return-void

    .line 132
    .end local v6    # "sortOrder":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    const-string v1, "CallDetailAllCallsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boram strNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    const-string v1, "number="

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 147
    .restart local v6    # "sortOrder":Ljava/lang/String;
    :cond_a
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "feature_kt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 149
    :cond_b
    const-string v6, "_id DESC"

    goto/16 :goto_1

    .line 151
    :cond_c
    const-string v6, "date DESC"

    goto/16 :goto_1

    .line 162
    :cond_d
    const/4 v1, 0x1

    sput v1, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    goto/16 :goto_2

    .line 181
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    goto/16 :goto_3

    .line 197
    :cond_f
    sget v1, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "firstLine"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 199
    .restart local v15    # "mFirstLine":Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->removeCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
