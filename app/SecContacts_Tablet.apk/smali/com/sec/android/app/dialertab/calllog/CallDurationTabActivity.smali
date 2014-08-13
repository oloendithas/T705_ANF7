.class public Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;
.super Landroid/app/TabActivity;
.source "CallDurationTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static final CALL_DURATION_TAB:Ljava/lang/String; = "CallDurationTab"

.field public static final REGISTERINFO_URI:Landroid/net/Uri;

.field public static final TAB_INDEX_SIM1:I = 0x0

.field public static final TAB_INDEX_SIM2:I = 0x1

.field public static iconIndexCDMA:I

.field public static iconIndexGSM:I

.field private static mTabHost:Landroid/widget/TabHost;

.field private static final multiSimNum:I

.field public static simNameCDMA:Ljava/lang/String;

.field public static simNameGSM:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->multiSimNum:I

    .line 41
    const-string v0, "content://com.sec.provider.simcardmanagement/registerinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->REGISTERINFO_URI:Landroid/net/Uri;

    .line 42
    const-string v0, "Slot 1"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    .line 43
    const-string v0, "Slot 2"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 31
    const-string v0, "CallDurationTabActivity"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 156
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 157
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 159
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 161
    :cond_0
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    const-string v1, "tab"

    const-string v2, "logs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 153
    return-void
.end method

.method private setSimCardIcon(I)I
    .locals 2
    .param p1, "nIndex"    # I

    .prologue
    .line 284
    const-string v1, "number_of_select_icon_is_9"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    packed-switch p1, :pswitch_data_0

    .line 314
    const v0, 0x7f020825

    .line 348
    .local v0, "Image":I
    :goto_0
    return v0

    .line 287
    .end local v0    # "Image":I
    :pswitch_0
    const v0, 0x7f020825

    .line 288
    .restart local v0    # "Image":I
    goto :goto_0

    .line 290
    .end local v0    # "Image":I
    :pswitch_1
    const v0, 0x7f020828

    .line 291
    .restart local v0    # "Image":I
    goto :goto_0

    .line 293
    .end local v0    # "Image":I
    :pswitch_2
    const v0, 0x7f020819

    .line 294
    .restart local v0    # "Image":I
    goto :goto_0

    .line 296
    .end local v0    # "Image":I
    :pswitch_3
    const v0, 0x7f020845

    .line 297
    .restart local v0    # "Image":I
    goto :goto_0

    .line 299
    .end local v0    # "Image":I
    :pswitch_4
    const v0, 0x7f02083b

    .line 300
    .restart local v0    # "Image":I
    goto :goto_0

    .line 302
    .end local v0    # "Image":I
    :pswitch_5
    const v0, 0x7f020837

    .line 303
    .restart local v0    # "Image":I
    goto :goto_0

    .line 305
    .end local v0    # "Image":I
    :pswitch_6
    const v0, 0x7f020832

    .line 306
    .restart local v0    # "Image":I
    goto :goto_0

    .line 308
    .end local v0    # "Image":I
    :pswitch_7
    const v0, 0x7f020840

    .line 309
    .restart local v0    # "Image":I
    goto :goto_0

    .line 311
    .end local v0    # "Image":I
    :pswitch_8
    const v0, 0x7f02082c

    .line 312
    .restart local v0    # "Image":I
    goto :goto_0

    .line 318
    .end local v0    # "Image":I
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 344
    const v0, 0x7f020824

    .restart local v0    # "Image":I
    goto :goto_0

    .line 320
    .end local v0    # "Image":I
    :pswitch_9
    const v0, 0x7f020824

    .line 321
    .restart local v0    # "Image":I
    goto :goto_0

    .line 323
    .end local v0    # "Image":I
    :pswitch_a
    const v0, 0x7f020827

    .line 324
    .restart local v0    # "Image":I
    goto :goto_0

    .line 326
    .end local v0    # "Image":I
    :pswitch_b
    const v0, 0x7f020831

    .line 327
    .restart local v0    # "Image":I
    goto :goto_0

    .line 329
    .end local v0    # "Image":I
    :pswitch_c
    const v0, 0x7f02083f

    .line 330
    .restart local v0    # "Image":I
    goto :goto_0

    .line 332
    .end local v0    # "Image":I
    :pswitch_d
    const v0, 0x7f02082b

    .line 333
    .restart local v0    # "Image":I
    goto :goto_0

    .line 335
    .end local v0    # "Image":I
    :pswitch_e
    const v0, 0x7f020848

    .line 336
    .restart local v0    # "Image":I
    goto :goto_0

    .line 338
    .end local v0    # "Image":I
    :pswitch_f
    const v0, 0x7f02081c

    .line 339
    .restart local v0    # "Image":I
    goto :goto_0

    .line 341
    .end local v0    # "Image":I
    :pswitch_10
    const v0, 0x7f02081d

    .line 342
    .restart local v0    # "Image":I
    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 318
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private setupSim1Tab()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 167
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "sim1"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 168
    .local v1, "sim1Spec":Landroid/widget/TabHost$TabSpec;
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setSimCardIcon(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "sim1Intent":Landroid/content/Intent;
    const-string v2, "CallDurationTab"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 181
    :goto_0
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 182
    return-void

    .line 175
    .end local v0    # "sim1Intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p0, v5}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0, v5}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .restart local v0    # "sim1Intent":Landroid/content/Intent;
    const-string v2, "CallDurationTab"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method

.method private setupSim2Tab()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 186
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "sim2"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 187
    .local v1, "sim2Spec":Landroid/widget/TabHost$TabSpec;
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setSimCardIcon(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v0, "sim2Intent":Landroid/content/Intent;
    const-string v2, "CallDurationTab"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 200
    :goto_0
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 202
    return-void

    .line 194
    .end local v0    # "sim2Intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p0, v5}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0, v5}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .restart local v0    # "sim2Intent":Landroid/content/Intent;
    const-string v2, "CallDurationTab"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method


# virtual methods
.method protected getSimCardInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    const v2, 0x7f0e0394

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "defaultSlot1Name":Ljava/lang/String;
    const v2, 0x7f0e0395

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "defaultSlot2Name":Ljava/lang/String;
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 217
    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    .line 218
    sput v4, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    .line 224
    :goto_0
    const-string v2, "ril.ICC_TYPE2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 225
    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    .line 226
    sput v5, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    .line 251
    .end local v0    # "defaultSlot1Name":Ljava/lang/String;
    .end local v1    # "defaultSlot2Name":Ljava/lang/String;
    :goto_1
    return-void

    .line 220
    .restart local v0    # "defaultSlot1Name":Ljava/lang/String;
    .restart local v1    # "defaultSlot2Name":Ljava/lang/String;
    :cond_0
    const-string v2, "gsm.sim.cardname"

    const-string v3, "Slot 1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    .line 221
    const-string v2, "gsm.sim.icon"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    goto :goto_0

    .line 228
    :cond_1
    const-string v2, "gsm.sim.cardname2"

    const-string v3, "Slot 2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    .line 229
    const-string v2, "gsm.sim.icon2"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    goto :goto_1

    .line 233
    .end local v0    # "defaultSlot1Name":Ljava/lang/String;
    .end local v1    # "defaultSlot2Name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    .line 234
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    .line 235
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 236
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    .line 240
    :goto_2
    const-string v2, "CallDurationTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim1 Icon iconIndexCDMA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simNameCDMA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_2"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    .line 243
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    .line 244
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 245
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    .line 249
    :goto_3
    const-string v2, "CallDurationTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim2 Icon iconIndexGSM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simNameGSM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 238
    :cond_3
    const v2, 0x7f0e03ef

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    goto :goto_2

    .line 247
    :cond_4
    const v2, 0x7f0e03f0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    goto :goto_3
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 254
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 255
    .local v0, "FILE_PATH":Ljava/lang/String;
    const/4 v3, 0x0

    .line 256
    .local v3, "in":Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 258
    .local v1, "current_slot":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 261
    const-string v5, "CallForwardingTab"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot_Sel [read]<---------------------------------- : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    if-eqz v4, :cond_3

    .line 269
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 275
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 276
    const-string v1, "0"

    .line 279
    :cond_1
    return-object v1

    .line 270
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 271
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 263
    :catch_1
    move-exception v2

    .line 264
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "CallForwardingTab"

    const-string v6, "File open error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    if-eqz v3, :cond_0

    .line 269
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 270
    :catch_2
    move-exception v5

    goto :goto_0

    .line 267
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 269
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 271
    :cond_2
    :goto_3
    throw v5

    .line 270
    :catch_3
    move-exception v6

    goto :goto_3

    .line 267
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 263
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :cond_3
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 52
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->getSimCardInfo()V

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setupSim1Tab()V

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setupSim2Tab()V

    .line 58
    const v0, 0x7f0e0319

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->configureActionBar()V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 66
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 129
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 131
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->onHomeSelected()V

    .line 132
    const/4 v0, 0x1

    return v0

    .line 129
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const v11, 0x1020016

    const v10, 0x1020006

    const/4 v9, 0x0

    .line 70
    const-string v7, "feature_common_use_multisim"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    sget v7, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->multiSimNum:I

    if-ge v2, v7, :cond_0

    .line 72
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .local v0, "simIcon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getTabSimIcon(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, "simName":Landroid/widget/TextView;
    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "simIcon":Landroid/widget/ImageView;
    .end local v1    # "simName":Landroid/widget/TextView;
    .end local v2    # "simSlotNum":I
    :cond_0
    const-string v7, "feature_chn_duos_cdma_gsm"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 82
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 83
    .local v3, "slot1Icon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    invoke-direct {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setSimCardIcon(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 87
    .local v4, "slot1Name":Landroid/widget/TextView;
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 90
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 91
    .local v5, "slot2Icon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    invoke-direct {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setSimCardIcon(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 95
    .local v6, "slot2Name":Landroid/widget/TextView;
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .end local v3    # "slot1Icon":Landroid/widget/ImageView;
    .end local v4    # "slot1Name":Landroid/widget/TextView;
    .end local v5    # "slot2Icon":Landroid/widget/ImageView;
    .end local v6    # "slot2Name":Landroid/widget/TextView;
    :cond_1
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 100
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 207
    .local v0, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 210
    :cond_0
    return-void
.end method
