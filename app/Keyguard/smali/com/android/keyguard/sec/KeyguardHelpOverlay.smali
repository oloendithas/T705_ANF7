.class public Lcom/android/keyguard/sec/KeyguardHelpOverlay;
.super Landroid/widget/RelativeLayout;
.source "KeyguardHelpOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static DEBUG:Z


# instance fields
.field private final FIRST_OVERLAY:I

.field private final LIMIT_COUNT:I

.field private final SCREEN_UPDATE:I

.field private dm:Landroid/util/DisplayMetrics;

.field private isHelpOverlayUSA:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mEntireLayout:Landroid/widget/RelativeLayout;

.field private mHelpButton1:Landroid/widget/Button;

.field private mHelpButton2:Landroid/widget/Button;

.field private mHelpCheckBox1:Landroid/widget/CheckBox;

.field private mHelpCheckBox2:Landroid/widget/CheckBox;

.field private mOverlayLayout1:Landroid/widget/RelativeLayout;

.field private mOverlayLayout2:Landroid/widget/RelativeLayout;

.field private mPopupLayout1:Landroid/widget/LinearLayout;

.field private mPopupLayout2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 62
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->SCREEN_UPDATE:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->FIRST_OVERLAY:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->LIMIT_COUNT:I

    .line 73
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 62
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->SCREEN_UPDATE:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->FIRST_OVERLAY:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->LIMIT_COUNT:I

    .line 83
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 62
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->SCREEN_UPDATE:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->FIRST_OVERLAY:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->LIMIT_COUNT:I

    .line 78
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private setDefaultCheckValue()V
    .registers 5

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->isHelpOverlayUSA:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    if-nez v0, :cond_c

    .line 295
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->setHelpLayoutFlag()V

    .line 300
    :cond_b
    :goto_b
    return-void

    .line 296
    :cond_c
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    if-nez v0, :cond_b

    .line 297
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_b
.end method


# virtual methods
.method public checkOverlayCondition()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 132
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    if-gt v2, v0, :cond_12

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->isLargePhone()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    move v0, v1

    .line 138
    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public isHelpOverlayVisible()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_12

    .line 286
    :cond_11
    :goto_11
    return v0

    .line 283
    :cond_12
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    .line 284
    :cond_22
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public isLargePhone()Z
    .registers 3

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 272
    .local v0, "deviceSW":I
    const/16 v1, 0x258

    if-ge v0, v1, :cond_10

    .line 273
    const/4 v1, 0x0

    .line 275
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_d

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 243
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_44

    .line 261
    :goto_14
    return-void

    .line 245
    :sswitch_15
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 246
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->setHelpLayoutFlag()V

    .line 248
    :cond_20
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->removeCallback()V

    goto :goto_14

    .line 253
    :sswitch_2c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 254
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->setHelpLayoutFlag()V

    .line 256
    :cond_37
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->removeCallback()V

    goto :goto_14

    .line 243
    nop

    :sswitch_data_44
    .sparse-switch
        0x7f0b0079 -> :sswitch_15
        0x7f0b0080 -> :sswitch_2c
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    .line 92
    const-string v0, "KeyguardHelpOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 95
    sput-boolean v4, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->DEBUG:Z

    .line 97
    :cond_3e
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->isHelpOverlayUSA:Z

    .line 98
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->setDefaultCheckValue()V

    .line 100
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mEntireLayout:Landroid/widget/RelativeLayout;

    .line 101
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    .line 102
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    .line 103
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    .line 106
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    .line 107
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->checkOverlayCondition()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 116
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->removeCallback()V

    .line 128
    :goto_cc
    return-void

    .line 120
    :cond_cd
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->showHelpTip()V

    goto :goto_cc
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_18

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_18

    .line 184
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 214
    :cond_17
    :goto_17
    return v1

    .line 187
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 188
    .local v0, "action":I
    packed-switch v0, :pswitch_data_64

    .line 210
    :cond_1f
    :goto_1f
    :pswitch_1f
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v3, :cond_17

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    move v1, v2

    .line 212
    goto :goto_17

    .line 191
    :pswitch_2c
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3a

    .line 192
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1f

    .line 193
    :cond_3a
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1f

    .line 194
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1f

    .line 200
    :pswitch_48
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_56

    .line 201
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1f

    .line 202
    :cond_56
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1f

    .line 203
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1f

    .line 188
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_48
        :pswitch_2c
        :pswitch_48
        :pswitch_1f
        :pswitch_1f
        :pswitch_48
    .end packed-switch
.end method

.method public removeCallback()V
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 224
    return-void
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 220
    return-void
.end method

.method public setHelpLayoutFlag()V
    .registers 6

    .prologue
    .line 170
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    .line 171
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 172
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "displayed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 174
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "help_overlay_checked"

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->checkOverlayCondition()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 177
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_2f
    return-void
.end method

.method public showHelpTip()V
    .registers 9

    .prologue
    const/high16 v7, -0x67000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 143
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_multiple_lockscreen"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_39

    move v0, v1

    .line 145
    .local v0, "isMultipleLockscreen":Z
    :goto_16
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3b

    if-eqz v0, :cond_3b

    .line 146
    const-string v1, "KeyguardHelpOverlay"

    const-string v3, "1st view show"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 148
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    :cond_2e
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_38
    return-void

    .end local v0    # "isMultipleLockscreen":Z
    :cond_39
    move v0, v2

    .line 143
    goto :goto_16

    .line 152
    .restart local v0    # "isMultipleLockscreen":Z
    :cond_3b
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_5e

    if-eqz v0, :cond_5e

    .line 153
    const-string v1, "KeyguardHelpOverlay"

    const-string v3, "2nd view show"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 155
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    :cond_53
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_38

    .line 160
    :cond_5e
    const-string v1, "KeyguardHelpOverlay"

    const-string v2, "3rd all view GONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->removeCallback()V

    goto :goto_38
.end method
