.class public Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
.super Ljava/lang/Object;
.source "DialtactsListSweepActionHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# static fields
.field private static final FADE_IN_FACTOR:F = 0.2f

.field private static final FADE_OUT_FACTOR:F = 0.2f

.field private static final INITIAL_OPACITY:F = 0.8f

.field private static final OPAQUE:F = 255.0f

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final PROPERTY_IMS_VOLTE_SUPPORTED:Ljava/lang/String; = "persist.sys.ims.volte_supported"

.field private static final TAG:Ljava/lang/String; = "DialtactsListSweepActionHandler"

.field private static isVoLTEEnabled:Z

.field private static mVideoCallIcon:Landroid/graphics/drawable/Drawable;

.field private static mVideoCallText:Ljava/lang/String;

.field private static mVoiceCallText:Ljava/lang/String;


# instance fields
.field private isVideo:Z

.field private mCallBackground:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mHasPhoneNumber:Z

.field private mLastDrawRectHeight:I

.field private mLastDrawRectWidth:I

.field private mLastDrawVisible:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mMessageBackground:Landroid/graphics/drawable/Drawable;

.field private mMessageIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageText:Ljava/lang/String;

.field private mNoNumberText:Ljava/lang/String;

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
    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "listView"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 192
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 193
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mFragment:Landroid/app/Fragment;

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    const v5, 0x7f0c0114

    const v4, 0x7f0209bb

    const v3, 0x7f02035f

    const v2, 0x7f0e031f

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    .line 68
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mStopDrawing:Z

    .line 70
    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectHeight:I

    .line 71
    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectWidth:I

    .line 72
    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawVisible:I

    .line 84
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->isVideo:Z

    .line 108
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020364

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    .line 122
    sget-boolean v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->isVoLTEEnabled:Z

    if-eqz v0, :cond_6

    .line 123
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020363

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 161
    :cond_0
    :goto_0
    const-string v0, "DialtactsListSweepActionHandler"

    const-string v1, "========= DIVYA true constructor ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02084c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02084d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVisibleScrollBarPadding:I

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarLeftPadding:I

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e02b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageText:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e023e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    .line 189
    return-void

    .line 128
    :cond_1
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e040d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 132
    :cond_2
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e040e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 142
    :cond_3
    const-string v0, "feature_volte_support_videocall"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "VZW"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVideoCallIcon:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e031b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVideoCallText:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVoiceCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 151
    :cond_4
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e040e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 165
    const-string v0, "DialtactsListSweepActionHandler"

    const-string v1, "========= DIVYA false constructor ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVideoCallIcon:Landroid/graphics/drawable/Drawable;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e031b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVideoCallText:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVoiceCallText:Ljava/lang/String;

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
    .line 432
    const/high16 v9, 0x3fa00000

    const v10, 0x3e4ccccd

    sub-float v10, p3, v10

    mul-float v3, v9, v10

    .line 434
    .local v3, "opacity":F
    float-to-double v9, v3

    const-wide v11, 0x3fa999999999999aL

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    .line 435
    const/4 v3, 0x0

    .line 438
    :cond_0
    const/high16 v9, 0x437f0000

    mul-float/2addr v9, v3

    float-to-int v7, v9

    .line 439
    .local v7, "textColor":I
    const/high16 v9, 0x437f0000

    mul-float/2addr v9, v3

    float-to-int v6, v9

    .line 441
    .local v6, "shadowColor":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 442
    .local v5, "saveCount":I
    new-instance v8, Landroid/graphics/Paint;

    const/16 v9, 0x101

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 443
    .local v8, "textPaint":Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 444
    iget-object v9, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 445
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "huge_font"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    .line 446
    iget-object v9, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0113

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 447
    .local v2, "SweepActionBarHugeTextSize":I
    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 448
    div-int/lit8 v9, v2, 0x2

    iget v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

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

    .line 450
    :cond_1
    iget v9, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private setupDrawablesBounds(II)V
    .locals 5
    .param p1, "height"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v4, 0x0

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 480
    .local v0, "tempDrawableRect":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 482
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 484
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 487
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 490
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 491
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 492
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 494
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 498
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->isVideo:Z

    if-eqz v1, :cond_0

    .line 499
    sget-object v1, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVideoCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 501
    :cond_0
    return-void
.end method


# virtual methods
.method public changCallIconandText(Z)V
    .locals 2
    .param p1, "VideoCall"    # Z

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->isVideo:Z

    .line 510
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->isVideo:Z

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "DialtactsListSweepActionHandler"

    const-string v1, "mCallIcon properties now are "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVideoCallText:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 523
    :goto_0
    return-void

    .line 519
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVoiceCallText:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHasPhoneNumber()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    return v0
.end method

.method public getmCallText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    return-object v0
.end method

.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 10
    .param p1, "itemIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 198
    const-string v7, "DialtactsListSweepActionHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDefineSweepAction: ItemIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v7, "DialtactsListSweepActionHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDefineSweepAction: ListView="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v7, "DialtactsListSweepActionHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDefineSweepAction: ChildCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 204
    .local v4, "sweepActionBarInfo":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "listItem":Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mFragment:Landroid/app/Fragment;

    instance-of v7, v7, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-nez v7, :cond_1

    if-eqz v1, :cond_1

    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, "tv":Landroid/widget/TextView;
    const v7, 0x7f0900ee

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tv":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 211
    .restart local v5    # "tv":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, "mPhoneNumber":Ljava/lang/String;
    const-string v7, "feature_spr"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v4, v6

    .line 251
    .end local v3    # "mPhoneNumber":Ljava/lang/String;
    .end local v4    # "sweepActionBarInfo":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-object v4

    .line 217
    .restart local v4    # "sweepActionBarInfo":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_1
    if-eqz v1, :cond_4

    .line 218
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 219
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mFragment:Landroid/app/Fragment;

    instance-of v7, v7, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v7, :cond_2

    .line 220
    const v7, 0x7f09021c

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 237
    .local v2, "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_5

    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    iput v6, v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    .line 245
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 247
    .local v0, "isMMSAvailable":Z
    if-nez v0, :cond_0

    .line 248
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    goto :goto_0

    .line 223
    .end local v0    # "isMMSAvailable":Z
    .end local v2    # "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    :cond_2
    const v7, 0x7f0900f3

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    goto :goto_1

    .line 227
    .end local v2    # "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    :cond_3
    const v7, 0x7f0900df

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    goto :goto_1

    .end local v2    # "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    :cond_4
    move-object v4, v6

    .line 233
    goto :goto_0

    .restart local v2    # "listItemWithoutHeaderAndBottomDivider":Landroid/view/View;
    :cond_5
    move-object v4, v6

    .line 242
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
    .line 257
    const-string v1, "DialtactsListSweepActionHandler"

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

    const-string v3, ", rect.height====>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz p4, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v10, 0x1

    .line 262
    .local v10, "isTouching":Z
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    .line 263
    .local v8, "isDragging":Z
    :goto_1
    const/4 v7, 0x0

    .line 265
    .local v7, "SweepTop":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v9

    .line 267
    .local v9, "isMMSAvailable":Z
    if-nez v9, :cond_4

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_4

    .line 422
    :cond_1
    :goto_2
    return-void

    .line 260
    .end local v7    # "SweepTop":I
    .end local v8    # "isDragging":Z
    .end local v9    # "isMMSAvailable":Z
    .end local v10    # "isTouching":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 262
    .restart local v10    # "isTouching":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 271
    .restart local v7    # "SweepTop":I
    .restart local v8    # "isDragging":Z
    .restart local v9    # "isMMSAvailable":Z
    :cond_4
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 272
    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v1, v7}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setupDrawablesBounds(II)V

    .line 273
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectHeight:I

    .line 274
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectWidth:I

    .line 279
    :cond_6
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mStopDrawing:Z

    if-eqz v1, :cond_7

    .line 280
    const-string v1, "DialtactsListSweepActionHandler"

    const-string v2, "onDrawSweepActionBar() is paused"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 285
    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_9

    .line 286
    move/from16 v0, p4

    invoke-virtual {p0, p2, p3, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->onListShouldDrawSelector(IFI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    if-eqz v10, :cond_1

    .line 295
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 296
    .local v11, "saveCount":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 300
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->isVideo:Z

    if-eqz v1, :cond_8

    .line 301
    sget-object v1, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVideoCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    :goto_3
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 306
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 308
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 303
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 318
    .end local v11    # "saveCount":I
    :cond_9
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_c

    .line 319
    move v4, p3

    .line 321
    .local v4, "drawProgress":F
    const/high16 v1, 0x3f800000

    cmpl-float v1, v4, v1

    if-lez v1, :cond_a

    .line 322
    const/high16 v4, 0x3f800000

    .line 326
    :cond_a
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 331
    .restart local v11    # "saveCount":I
    neg-float v1, v4

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

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

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageText:Ljava/lang/String;

    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_4

    .line 365
    .end local v4    # "drawProgress":F
    .end local v11    # "saveCount":I
    :cond_c
    const/high16 v1, -0x40800000

    mul-float v4, v1, p3

    .line 367
    .restart local v4    # "drawProgress":F
    const/high16 v1, 0x3f800000

    cmpl-float v1, v4, v1

    if-lez v1, :cond_d

    .line 368
    const/high16 v4, 0x3f800000

    .line 372
    :cond_d
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 377
    .restart local v11    # "saveCount":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

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

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 381
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 384
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 386
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->isVideo:Z

    if-eqz v1, :cond_e

    .line 388
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVideoCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 391
    sget-object v1, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVideoCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 401
    :goto_5
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 416
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_6
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    .line 395
    :cond_e
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 399
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 416
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_6
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 1
    .param p1, "itemIndex"    # I
    .param p2, "sweepProgress"    # F
    .param p3, "sweepState"    # I

    .prologue
    .line 426
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

.method public setHasPhoneNumber(Z)V
    .locals 0
    .param p1, "hasPhoneNumber"    # Z

    .prologue
    .line 504
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    .line 505
    return-void
.end method

.method public setListDrawStop(Z)V
    .locals 0
    .param p1, "isStop"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mStopDrawing:Z

    .line 539
    return-void
.end method

.method public setmCallText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCallText"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 531
    return-void
.end method
