.class public Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;
.super Ljava/lang/Object;
.source "ContactListSweepActionHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# static fields
.field private static final FADE_IN_FACTOR:F = 0.2f

.field private static final FADE_OUT_FACTOR:F = 0.2f

.field private static final INITIAL_OPACITY:F = 0.8f

.field private static final OPAQUE:F = 255.0f

.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactListSweepActionHandler"

.field private static isVoLTEEnabled:Z


# instance fields
.field private isContactsList:Z

.field private isVoiceCallAvailabe:Z

.field private mCallBackground:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasEmailAddress:Z

.field private mHasPhoneNumber:Z

.field private mLastDrawRectHeight:I

.field private mLastDrawRectWidth:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mMessageBackground:Landroid/graphics/drawable/Drawable;

.field private mMessageIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageText:Ljava/lang/String;

.field private mNoNumberText:Ljava/lang/String;

.field private mSetCallSim:I

.field private mStopDrawing:Z

.field private mSweepAactionBbarRightPadding:I

.field private mSweepActionBarLeftPadding:I

.field private mSweepActionBarTextSize:I

.field private mSweepActionBarTopPadding:I

.field private mVisibleScrollBarPadding:I

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .param p3, "isContacts"    # Z

    .prologue
    const v3, 0x7f0e040e

    const v2, 0x7f0e031f

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasEmailAddress:Z

    .line 74
    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    .line 76
    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSetCallSim:I

    .line 116
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mStopDrawing:Z

    .line 124
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 127
    iput-boolean p3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isContactsList:Z

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoiceCallAvailabe:Z

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020364

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    .line 142
    sget-boolean v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoLTEEnabled:Z

    if-eqz v0, :cond_4

    .line 143
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020363

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02084c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    .line 182
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isContactsList:Z

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarLeftPadding:I

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e02b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageText:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e023e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    .line 199
    return-void

    .line 148
    :cond_1
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e040d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
    :cond_2
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02035f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    goto/16 :goto_1
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "sweepText"    # Ljava/lang/String;
    .param p3, "drawProgress"    # F
    .param p4, "xPosition"    # F
    .param p5, "yPosition"    # F

    .prologue
    .line 433
    const-string v9, "ContactListSweepActionHandler"

    const-string v10, "========= DIVYA drawSweepText ========="

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/high16 v9, 0x3fa00000

    const v10, 0x3e4ccccd

    sub-float v10, p3, v10

    mul-float v3, v9, v10

    .line 435
    .local v3, "opacity":F
    float-to-double v9, v3

    const-wide v11, 0x3fa999999999999aL

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    .line 436
    const/4 v3, 0x0

    .line 439
    :cond_0
    const/high16 v9, 0x437f0000

    mul-float/2addr v9, v3

    float-to-int v7, v9

    .line 440
    .local v7, "textColor":I
    const/high16 v9, 0x437f0000

    mul-float/2addr v9, v3

    float-to-int v6, v9

    .line 442
    .local v6, "shadowColor":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 443
    .local v5, "saveCount":I
    new-instance v8, Landroid/graphics/Paint;

    const/16 v9, 0x101

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 444
    .local v8, "textPaint":Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 445
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 446
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "huge_font"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    .line 447
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0113

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 449
    .local v2, "SweepActionBarHugeTextSize":I
    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 450
    div-int/lit8 v9, v2, 0x2

    iget v10, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v9, v10

    int-to-float v0, v9

    move/from16 p5, v0

    .line 455
    .end local v2    # "SweepActionBarHugeTextSize":I
    :goto_0
    const/4 v7, -0x1

    .line 456
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p1, p2, v0, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 460
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 461
    return-void

    .line 452
    :cond_1
    iget v9, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private setupDrawablesBounds(I)V
    .locals 5
    .param p1, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v4, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v4, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 477
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 478
    .local v0, "tempDrawableRect":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 480
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 482
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 487
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 489
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 490
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 491
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 494
    return-void
.end method


# virtual methods
.method public getHasEmailAddress()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasEmailAddress:Z

    return v0
.end method

.method public getHasPhoneNumber()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    return v0
.end method

.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 8
    .param p1, "itemIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 203
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 206
    .local v3, "sweepActionBarInfo":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, "listItem":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 211
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 219
    .local v2, "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 220
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    .line 228
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoiceCallAvailabe:Z

    if-nez v4, :cond_0

    .line 229
    iput-boolean v7, v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 232
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 234
    .local v0, "isMMSAvailable":Z
    if-nez v0, :cond_1

    .line 235
    iput-boolean v7, v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    .line 238
    .end local v0    # "isMMSAvailable":Z
    .end local v2    # "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    .end local v3    # "sweepActionBarInfo":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_1
    :goto_0
    return-object v3

    .restart local v3    # "sweepActionBarInfo":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_2
    move-object v3, v4

    .line 216
    goto :goto_0

    .restart local v2    # "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    :cond_3
    move-object v3, v4

    .line 225
    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemIndex"    # I
    .param p3, "sweepProgress"    # F
    .param p4, "sweepState"    # I
    .param p5, "rect"    # Landroid/graphics/Rect;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    const-string v1, "ContactListSweepActionHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawSweepActionBar() / itemIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoiceCallAvailabe:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02084c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v9

    .line 257
    .local v9, "isMMSAvailable":Z
    if-nez v9, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-gez v1, :cond_0

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02084d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    .line 265
    :cond_4
    if-eqz p4, :cond_5

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_8

    :cond_5
    const/4 v10, 0x1

    .line 266
    .local v10, "isTouching":Z
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_9

    const/4 v8, 0x1

    .line 268
    .local v8, "isDragging":Z
    :goto_2
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 269
    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setupDrawablesBounds(I)V

    .line 270
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    .line 271
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    .line 276
    :cond_7
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mStopDrawing:Z

    if-eqz v1, :cond_a

    .line 277
    const-string v1, "ContactListSweepActionHandler"

    const-string v2, "onDrawSweepActionBar() is paused"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v8    # "isDragging":Z
    .end local v10    # "isTouching":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_1

    .line 266
    .restart local v10    # "isTouching":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    .line 282
    .restart local v8    # "isDragging":Z
    :cond_a
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_c

    .line 283
    move/from16 v0, p4

    invoke-virtual {p0, p2, p3, v0}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->onListShouldDrawSelector(IFI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    :cond_b
    if-eqz v10, :cond_0

    .line 294
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 295
    .local v11, "saveCount":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 300
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 312
    .end local v11    # "saveCount":I
    :cond_c
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_12

    .line 313
    move v4, p3

    .line 315
    .local v4, "drawProgress":F
    const/high16 v1, 0x3f800000

    cmpl-float v1, v4, v1

    if-lez v1, :cond_d

    .line 316
    const/high16 v4, 0x3f800000

    .line 320
    :cond_d
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 324
    .restart local v11    # "saveCount":I
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    .line 325
    neg-float v1, v4

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    :cond_e
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 347
    const/4 v7, 0x0

    .line 348
    .local v7, "data":Z
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_10

    .line 349
    const/4 v7, 0x1

    .line 353
    :cond_f
    :goto_3
    if-eqz v7, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageText:Ljava/lang/String;

    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    .line 350
    :cond_10
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasEmailAddress:Z

    if-eqz v1, :cond_f

    .line 351
    const/4 v7, 0x1

    goto :goto_3

    .line 353
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_4

    .line 356
    .end local v4    # "drawProgress":F
    .end local v7    # "data":Z
    .end local v11    # "saveCount":I
    :cond_12
    const/high16 v1, -0x40800000

    mul-float v4, v1, p3

    .line 358
    .restart local v4    # "drawProgress":F
    const/high16 v1, 0x3f800000

    cmpl-float v1, v4, v1

    if-lez v1, :cond_13

    .line 359
    const/high16 v4, 0x3f800000

    .line 363
    :cond_13
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 366
    .restart local v11    # "saveCount":I
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    :cond_14
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 374
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 375
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 378
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 420
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_15

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    :cond_15
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_5
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 1
    .param p1, "itemIndex"    # I
    .param p2, "sweepProgress"    # F
    .param p3, "sweepState"    # I

    .prologue
    .line 427
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallSimName(I)V
    .locals 3
    .param p1, "setCallSim"    # I

    .prologue
    .line 503
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSetCallSim:I

    .line 504
    const-string v0, "ContactListSweepActionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSetCallSim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSetCallSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method public setHasEmailAddress(Z)V
    .locals 0
    .param p1, "hasEmailAddress"    # Z

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasEmailAddress:Z

    .line 513
    return-void
.end method

.method public setHasPhoneNumber(Z)V
    .locals 0
    .param p1, "hasPhoneNumber"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    .line 498
    return-void
.end method

.method public setListDrawStop(Z)V
    .locals 0
    .param p1, "isStop"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mStopDrawing:Z

    .line 521
    return-void
.end method
