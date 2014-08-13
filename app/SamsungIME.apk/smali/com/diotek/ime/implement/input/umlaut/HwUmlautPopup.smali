.class public Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;
.super Landroid/app/Activity;
.source "HwUmlautPopup.java"


# static fields
.field private static final MSG_NO_USER_INPUT:I = 0x3e8


# instance fields
.field keysClickListener:Landroid/view/View$OnClickListener;

.field mHandler:Landroid/os/Handler;

.field mUmluatLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$1;-><init>(Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$2;-><init>(Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->keysClickListener:Landroid/view/View$OnClickListener;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->sendSelectedCode()V

    return-void
.end method

.method private addNewLine()Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    .line 211
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 212
    .local v1, "rowLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 214
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 215
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mUmluatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    return-object v1
.end method

.method private resetTimerForNoUserInput()V
    .locals 4

    .prologue
    const/16 v2, 0x3e8

    .line 121
    iget-object v0, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    return-void
.end method

.method private sendCode(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "codechar"    # Ljava/lang/CharSequence;

    .prologue
    .line 200
    iget-object v2, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 203
    .local v0, "alternativeChar":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v1, "code":Landroid/content/Intent;
    const-string v2, "commit_char"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "alternative_code"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 208
    return-void

    .line 202
    .end local v0    # "alternativeChar":Ljava/lang/String;
    .end local v1    # "code":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendSelectedCode()V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mUmluatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 194
    .local v0, "bt":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->sendCode(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v22, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/WindowManager;

    .line 53
    .local v21, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 54
    .local v10, "display":Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v16

    .line 57
    .local v16, "screenWidth":I
    const v22, 0x7f03002f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "umlaut_list"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 59
    .local v19, "umlautList":Ljava/lang/String;
    const v22, 0x7f080032

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mUmluatLayout:Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090031

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v5, v0

    .line 63
    .local v5, "BUTTON_WIDTH":I
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v15

    .line 64
    .local v15, "row":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_6

    .line 65
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v7, "buttonLayout":Landroid/widget/LinearLayout;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v18, "textView":Landroid/widget/TextView;
    add-int/lit8 v22, v11, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 70
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 71
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    const/16 v22, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setWidth(I)V

    .line 76
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    new-instance v6, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 79
    .local v6, "button":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->keysClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    add-int/lit8 v22, v11, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setId(I)V

    .line 82
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setWidth(I)V

    .line 83
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 85
    if-nez v11, :cond_3

    .line 86
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 87
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 91
    :cond_0
    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 93
    .local v8, "buttonParent":Landroid/view/ViewParent;
    if-eqz v8, :cond_1

    instance-of v0, v8, Landroid/view/ViewGroup;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 94
    check-cast v8, Landroid/view/ViewGroup;

    .end local v8    # "buttonParent":Landroid/view/ViewParent;
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    :cond_1
    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->measure(II)V

    .line 98
    invoke-virtual {v15, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 101
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v17

    .line 103
    .local v17, "tempLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    rem-int/lit8 v23, v23, 0x2

    add-int v9, v22, v23

    .line 104
    .local v9, "centerIndex":I
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 105
    .local v13, "length":I
    move v12, v9

    .local v12, "idx":I
    :goto_2
    if-ge v12, v13, :cond_4

    .line 106
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 107
    .local v20, "view":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 108
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_2

    instance-of v0, v14, Landroid/view/ViewGroup;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 109
    check-cast v14, Landroid/view/ViewGroup;

    .end local v14    # "parent":Landroid/view/ViewParent;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 88
    .end local v9    # "centerIndex":I
    .end local v12    # "idx":I
    .end local v13    # "length":I
    .end local v17    # "tempLayout":Landroid/widget/LinearLayout;
    .end local v20    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_0

    .line 89
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    goto/16 :goto_1

    .line 113
    .restart local v9    # "centerIndex":I
    .restart local v12    # "idx":I
    .restart local v13    # "length":I
    .restart local v17    # "tempLayout":Landroid/widget/LinearLayout;
    :cond_4
    move-object/from16 v15, v17

    .line 64
    .end local v9    # "centerIndex":I
    .end local v12    # "idx":I
    .end local v13    # "length":I
    .end local v17    # "tempLayout":Landroid/widget/LinearLayout;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 117
    .end local v6    # "button":Landroid/widget/Button;
    .end local v7    # "buttonLayout":Landroid/widget/LinearLayout;
    .end local v18    # "textView":Landroid/widget/TextView;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->resetTimerForNoUserInput()V

    .line 118
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .line 144
    :cond_0
    const/4 v0, 0x7

    if-lt p1, v0, :cond_4

    const/16 v0, 0x10

    if-gt p1, v0, :cond_4

    .line 146
    const/4 v10, 0x0

    .line 148
    .local v10, "number":I
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 149
    add-int/lit8 v10, p1, 0x3

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mUmluatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 154
    .local v8, "bt":Landroid/widget/Button;
    if-eqz v8, :cond_1

    .line 155
    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->sendCode(Ljava/lang/CharSequence;)V

    .line 189
    .end local v8    # "bt":Landroid/widget/Button;
    .end local v10    # "number":I
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 151
    .restart local v10    # "number":I
    :cond_2
    add-int/lit8 v10, p1, -0x7

    goto :goto_1

    .line 158
    .restart local v8    # "bt":Landroid/widget/Button;
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    const/high16 v6, 0x3f800000

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 164
    .local v9, "down":Landroid/view/MotionEvent;
    invoke-static {v9}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    .line 165
    .local v11, "up":Landroid/view/MotionEvent;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 166
    invoke-virtual {v8, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 167
    invoke-virtual {v8, v11}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 168
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 169
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    .line 172
    .end local v8    # "bt":Landroid/widget/Button;
    .end local v9    # "down":Landroid/view/MotionEvent;
    .end local v10    # "number":I
    .end local v11    # "up":Landroid/view/MotionEvent;
    :cond_4
    const/16 v0, 0x62

    if-ne p1, v0, :cond_6

    .line 173
    iget-object v0, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mUmluatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 174
    .local v12, "v":Landroid/view/View;
    if-eqz v12, :cond_5

    .line 175
    iget-object v0, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mUmluatLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x42

    invoke-virtual {v0, v12, v1}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mUmluatLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_2

    .line 181
    .end local v12    # "v":Landroid/view/View;
    :cond_6
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_7

    .line 182
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->sendSelectedCode()V

    goto :goto_2

    .line 183
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->sendCode(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 186
    :cond_8
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->resetTimerForNoUserInput()V

    goto :goto_2
.end method
