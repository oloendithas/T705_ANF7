.class Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# static fields
.field private static isVoLTEEnabled:Z


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private final mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "phoneCallDetailsHelper"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    .param p2, "phoneNumberHelper"    # Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 61
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 62
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 63
    return-void
.end method

.method private configureCallSecondaryAction(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .param p3, "details"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    const v4, 0x7f02075a

    const v9, 0x7f020744

    const/high16 v8, 0x41100000

    const/high16 v7, 0x41400000

    const/4 v6, 0x0

    .line 155
    iget v3, p3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    sparse-switch v3, :sswitch_data_0

    .line 218
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 219
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "mContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "topPadding":I
    const/4 v0, 0x0

    .line 223
    .local v0, "leftPadding":I
    const-string v3, "feature_wvga"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 224
    const/high16 v3, 0x41700000

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 226
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    const/high16 v3, 0x40e00000

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 229
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v7

    float-to-int v2, v3

    .line 252
    :cond_1
    :goto_1
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v3, v0, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 254
    return-void

    .line 164
    .end local v0    # "leftPadding":I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "topPadding":I
    .restart local p1    # "mContext":Landroid/content/Context;
    :sswitch_0
    iget-boolean v3, p3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    if-eqz v3, :cond_5

    .line 165
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v4, 0x7f02074a

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 180
    :goto_2
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e031f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 168
    :cond_2
    const-string v3, "feature_kt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v4, 0x7f020746

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 171
    :cond_3
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 172
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v4, 0x7f020747

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 175
    :cond_4
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v4, 0x7f020748

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 178
    :cond_5
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 184
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 186
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e031f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 191
    :sswitch_2
    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v4, 0x7f020778

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 196
    :goto_3
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 194
    :cond_6
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v4, 0x7f020777

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 231
    .end local p1    # "mContext":Landroid/content/Context;
    .restart local v0    # "leftPadding":I
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "topPadding":I
    :cond_7
    const-string v3, "feature_is_note"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 232
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v8

    float-to-int v2, v3

    .line 234
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v7

    float-to-int v2, v3

    goto/16 :goto_1

    .line 237
    :cond_8
    const-string v3, "feature_is_fonblet"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 238
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v8

    float-to-int v2, v3

    .line 239
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v8

    float-to-int v0, v3

    goto/16 :goto_1

    .line 240
    :cond_9
    const-string v3, "feature_qhd"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 241
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 243
    const/high16 v3, 0x41800000

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 244
    const/high16 v3, -0x3fc00000

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 247
    :cond_a
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v7

    float-to-int v2, v3

    goto/16 :goto_1

    .line 249
    :cond_b
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v7

    float-to-int v2, v3

    goto/16 :goto_1

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_1
    .end sparse-switch
.end method

.method private configurePlaySecondaryAction(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V
    .locals 0
    .param p1, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .prologue
    .line 276
    return-void
.end method

.method private getCallActionDescription(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "details"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    .line 259
    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 265
    .local v0, "recipient":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0e01ff

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 262
    .end local v0    # "recipient":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v2, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "recipient":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .param p3, "details"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .param p4, "isHighlighted"    # Z
    .param p5, "listGroupSize"    # I

    .prologue
    .line 74
    const-string v0, "cnap_text_for_smc_test"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;)V
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .param p3, "details"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .param p4, "isHighlighted"    # Z
    .param p5, "listGroupSize"    # I
    .param p6, "cnapName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v2, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;)V

    .line 89
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v1, p3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 91
    .local v7, "canCall":Z
    iget-object v0, p3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    aget v0, v0, v8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v8, 0x1

    .line 93
    .local v8, "canPlay":Z
    :cond_0
    if-eqz v8, :cond_2

    .line 107
    .end local v7    # "canCall":Z
    .end local v8    # "canPlay":Z
    :cond_1
    :goto_0
    return-void

    .line 97
    .restart local v7    # "canCall":Z
    .restart local v8    # "canPlay":Z
    :cond_2
    if-eqz v7, :cond_3

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->configureCallSecondaryAction(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .param p3, "details"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .param p4, "isHighlighted"    # Z
    .param p5, "listGroupSize"    # I
    .param p6, "cnapName"    # Ljava/lang/String;
    .param p7, "firstName"    # Ljava/lang/String;
    .param p8, "lastName"    # Ljava/lang/String;
    .param p9, "bussName"    # Ljava/lang/String;
    .param p10, "cityId"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    move-object v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 118
    .local v12, "canCall":Z
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v13, 0x1

    .line 124
    .local v13, "canPlay":Z
    :goto_0
    if-nez v12, :cond_0

    if-eqz v13, :cond_3

    .line 126
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->configureCallSecondaryAction(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    .line 137
    .end local v12    # "canCall":Z
    .end local v13    # "canPlay":Z
    :cond_1
    :goto_1
    return-void

    .line 118
    .restart local v12    # "canCall":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 130
    .restart local v13    # "canPlay":Z
    :cond_3
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 133
    :cond_4
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method protected setScrollState(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->setScrollState(I)V

    .line 280
    return-void
.end method
