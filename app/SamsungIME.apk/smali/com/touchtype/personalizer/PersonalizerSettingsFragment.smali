.class public Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PersonalizerSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;,
        Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final WATCHER_WAIT:J = 0x1f4L


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

.field private mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsPersonalizedDataDefaultOff:Z

.field private mIsPredictive:Z

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mPhoneType:I

.field private mPreferences:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype/personalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation
.end field

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSPref:Landroid/content/SharedPreferences;

.field private mService:Lcom/touchtype/personalizer/PersonalizerService;

.field private mTimedTask:Ljava/lang/Runnable;

.field private mWatcherHandler:Landroid/os/Handler;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private onPredictiveSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 65
    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPersonalizedDataDefaultOff:Z

    .line 66
    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    .line 67
    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    .line 68
    iput-boolean v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    .line 69
    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 70
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    .line 77
    iput v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPhoneType:I

    .line 78
    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 79
    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 80
    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->misTablet:Z

    .line 735
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->onPredictiveSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showLiveLanguageGuideDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showSwiftKeyGuideDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizerService;
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
    .param p1, "x1"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindToService()V
    .locals 4

    .prologue
    .line 454
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "Bind to personalizer service"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const-class v2, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 457
    return-void
.end method

.method private checkMessaging(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceCategory;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 569
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_personalize_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    if-eqz p1, :cond_0

    .line 571
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Removed Messaging due to Wifi model"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v0, 0x0

    .line 576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkWeibo(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceCategory;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 557
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_personalize_weibo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 559
    .local v0, "showWeibo":Z
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 560
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "Removed Weibo due to configuration setting"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v1, 0x0

    .line 565
    .end local v0    # "showWeibo":Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPreferences()Ljava/util/Vector;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype/personalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 497
    .local v6, "prefs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/touchtype/personalizer/PersonalizerPreference;>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 498
    .local v8, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    .line 499
    .local v5, "preferenceCount":I
    const/4 v10, 0x0

    .line 501
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    iget-object v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v13, :cond_2

    .line 502
    sget-object v13, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v14, "getPreferences fail due to inputmethod is null"

    invoke-static {v13, v14}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_0
    if-eqz v10, :cond_4

    .line 510
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v13

    iput v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPhoneType:I

    .line 515
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_b

    .line 517
    invoke-virtual {v8, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    .line 519
    .local v11, "tpref":Landroid/preference/Preference;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 521
    .local v7, "prefsToDelete":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/touchtype/personalizer/PersonalizerPreference;>;"
    instance-of v13, v11, Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_9

    .line 523
    invoke-virtual {v8, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 524
    .local v9, "subcat":Landroid/preference/PreferenceCategory;
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .local v3, "j":I
    :goto_3
    if-ltz v3, :cond_8

    .line 526
    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    .line 527
    .local v12, "tsubpref":Landroid/preference/Preference;
    instance-of v13, v12, Lcom/touchtype/personalizer/PersonalizerPreference;

    if-eqz v13, :cond_1

    .line 529
    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/touchtype/personalizer/PersonalizerPreference;

    .line 530
    .local v4, "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    invoke-direct {p0, v9, v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->checkWeibo(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z

    move-result v0

    .line 532
    .local v0, "addPref":Z
    iget v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPhoneType:I

    if-nez v13, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 537
    :cond_0
    :goto_4
    if-eqz v0, :cond_7

    .line 538
    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 524
    .end local v0    # "addPref":Z
    .end local v4    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    :cond_1
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 503
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v7    # "prefsToDelete":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/touchtype/personalizer/PersonalizerPreference;>;"
    .end local v9    # "subcat":Landroid/preference/PreferenceCategory;
    .end local v11    # "tpref":Landroid/preference/Preference;
    .end local v12    # "tsubpref":Landroid/preference/Preference;
    :cond_2
    iget-object v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v13

    if-nez v13, :cond_3

    .line 504
    sget-object v13, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v14, "getPreferences fail due to inputmethod Context is null"

    invoke-static {v13, v14}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_3
    iget-object v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    check-cast v10, Landroid/telephony/TelephonyManager;

    .restart local v10    # "tm":Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 512
    :cond_4
    const/4 v13, 0x0

    iput v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPhoneType:I

    goto :goto_1

    .line 534
    .restart local v0    # "addPref":Z
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    .restart local v7    # "prefsToDelete":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/touchtype/personalizer/PersonalizerPreference;>;"
    .restart local v9    # "subcat":Landroid/preference/PreferenceCategory;
    .restart local v11    # "tpref":Landroid/preference/Preference;
    .restart local v12    # "tsubpref":Landroid/preference/Preference;
    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0, v9, v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->checkMessaging(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v0, 0x1

    :goto_6
    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    .line 540
    :cond_7
    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 544
    .end local v0    # "addPref":Z
    .end local v4    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    .end local v12    # "tsubpref":Landroid/preference/Preference;
    :cond_8
    invoke-virtual {v7}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype/personalizer/PersonalizerPreference;

    .line 545
    .restart local v4    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    invoke-virtual {v9, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 547
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "j":I
    .end local v4    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    .end local v9    # "subcat":Landroid/preference/PreferenceCategory;
    :cond_9
    instance-of v13, v11, Lcom/touchtype/personalizer/PersonalizerPreference;

    if-eqz v13, :cond_a

    move-object v4, v11

    .line 548
    check-cast v4, Lcom/touchtype/personalizer/PersonalizerPreference;

    .line 549
    .restart local v4    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v4    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 552
    .end local v7    # "prefsToDelete":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/touchtype/personalizer/PersonalizerPreference;>;"
    .end local v11    # "tpref":Landroid/preference/Preference;
    :cond_b
    return-object v6
.end method

.method private setSummary(JII)Ljava/lang/String;
    .locals 11
    .param p1, "lastRun"    # J
    .param p3, "withRelativeDateId"    # I
    .param p4, "withoutRelativeDateId"    # I

    .prologue
    const/4 v10, 0x0

    .line 588
    const/4 v8, 0x0

    .line 589
    .local v8, "relative":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 590
    .local v9, "summary":Ljava/lang/String;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 592
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/4 v6, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 601
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 603
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, "fmt":Ljava/lang/String;
    const-string v0, "%1$s"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 605
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v10

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 610
    .end local v7    # "fmt":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 593
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setup()V
    .locals 4

    .prologue
    .line 365
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 366
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 367
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showUseWifiToast(Landroid/os/Bundle;)V

    .line 368
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->getPreferences()Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPreferences:Ljava/util/Vector;

    .line 369
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    iput-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    .line 372
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v2, v3}, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->setConfiguration(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V

    .line 381
    return-void
.end method

.method private showLiveLanguageGuideDialog()V
    .locals 9

    .prologue
    .line 666
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 667
    :cond_0
    const v5, 0x7f030038

    .line 668
    .local v5, "liveLanguageGuideLayoutRscId":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0212

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "liveLanguageGuideDialogTitle":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    .line 733
    .end local v4    # "liveLanguageGuideDialogTitle":Ljava/lang/String;
    .end local v5    # "liveLanguageGuideLayoutRscId":I
    :cond_1
    :goto_0
    return-void

    .line 673
    .restart local v4    # "liveLanguageGuideDialogTitle":Ljava/lang/String;
    .restart local v5    # "liveLanguageGuideLayoutRscId":I
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const/high16 v8, 0x7f0e0000

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 674
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 676
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 677
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 678
    .local v2, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 679
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 680
    const v6, 0x7f080045

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 681
    .local v1, "chkbox":Landroid/widget/CheckBox;
    new-instance v6, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;

    invoke-direct {v6, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    const v6, 0x104000a

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;

    invoke-direct {v7, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 707
    const v6, 0x7f0d01d1

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$8;

    invoke-direct {v7, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$8;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 718
    new-instance v6, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$9;

    invoke-direct {v6, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$9;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 730
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 731
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showSwiftKeyGuideDialog()V
    .locals 9

    .prologue
    .line 613
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 614
    :cond_0
    const v5, 0x7f030044

    .line 615
    .local v5, "swiftkeyGuideLayoutRscId":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, "swiftkeyGuideDialogTitle":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    .line 663
    .end local v4    # "swiftkeyGuideDialogTitle":Ljava/lang/String;
    .end local v5    # "swiftkeyGuideLayoutRscId":I
    :cond_1
    :goto_0
    return-void

    .line 620
    .restart local v4    # "swiftkeyGuideDialogTitle":Ljava/lang/String;
    .restart local v5    # "swiftkeyGuideLayoutRscId":I
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const/high16 v8, 0x7f0e0000

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 622
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 624
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 625
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 626
    .local v2, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 627
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 628
    const v6, 0x7f08005d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 629
    .local v1, "chkbox":Landroid/widget/CheckBox;
    new-instance v6, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$3;

    invoke-direct {v6, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$3;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    const v6, 0x104000a

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;

    invoke-direct {v7, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 650
    const v6, 0x7f0d01d1

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$5;

    invoke-direct {v7, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$5;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 660
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 661
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showUseWifiToast(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 482
    if-eqz p1, :cond_0

    const-string v0, "com.touchtype.personalizer.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.touchtype.personalizer.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const v2, 0x7f0d0225

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 487
    :cond_0
    return-void
.end method

.method private unbindFromService()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unbind from personalizer service"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 464
    :cond_0
    return-void
.end method


# virtual methods
.method public clearUserModel()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, "res":Z
    const/4 v2, 0x0

    .line 469
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v3}, Lcom/touchtype/personalizer/PersonalizerService;->clearLanguageData()Z

    move-result v1

    .line 472
    :cond_0
    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d021f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 477
    :goto_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 478
    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    .line 479
    .local v0, "repository":Lcom/diotek/ime/framework/repository/Repository;
    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v0, v3, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 480
    return-void

    .line 475
    .end local v0    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0220

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 391
    const/4 v3, 0x0

    .line 393
    .local v3, "serviceName":Ljava/lang/String;
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPreferences:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/personalizer/PersonalizerPreference;

    .line 395
    .local v2, "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 397
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {v2, v7}, Lcom/touchtype/personalizer/PersonalizerPreference;->setActive(Z)V

    .line 400
    packed-switch p2, :pswitch_data_0

    .line 429
    .end local v2    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 404
    .restart local v2    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    :pswitch_1
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    .line 407
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0224

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    :cond_2
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    const-string v6, "params"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/touchtype/personalizer/Personalizer;->startPersonalization(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :pswitch_2
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d021d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "format":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, "text":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 420
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/touchtype/personalizer/PersonalizerService;->setFailed(I)V

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 225
    :try_start_0
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    .line 226
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 227
    .local v5, "parent":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 228
    .local v3, "index":I
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 229
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 231
    .local v4, "middle":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 232
    .local v6, "sideWeight":I
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, "childmiddle":Landroid/view/View;
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800aa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "childleft":Landroid/view/View;
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800ab

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 235
    .local v2, "childright":Landroid/view/View;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020a4b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "childleft":Landroid/view/View;
    .end local v1    # "childmiddle":Landroid/view/View;
    .end local v2    # "childright":Landroid/view/View;
    .end local v3    # "index":I
    .end local v4    # "middle":I
    .end local v5    # "parent":Landroid/view/ViewGroup;
    .end local v6    # "sideWeight":I
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iput-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    .line 87
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    .line 90
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const-string v9, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    .line 91
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 93
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v8, :cond_0

    .line 94
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v8

    iput-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 95
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v8, :cond_0

    .line 96
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "TABLET_MODE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->misTablet:Z

    .line 99
    :cond_0
    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->misTablet:Z

    if-eqz v8, :cond_1

    .line 100
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x400

    const/16 v10, 0x400

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setFlags(II)V

    .line 104
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPersonalizedDataDefaultOff:Z

    .line 105
    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "salesCode":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPersonalizedDataDefaultOff:Z

    if-eqz v8, :cond_9

    .line 108
    const v8, 0x7f050205

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 113
    :goto_0
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 114
    .local v1, "bar":Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 115
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 116
    new-instance v0, Landroid/widget/Switch;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-direct {v0, v8}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "actionBarSwitch":Landroid/widget/Switch;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090655

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 118
    .local v5, "rightPadding":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v5, v10}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 119
    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v1, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 122
    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const v11, 0x800015

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 126
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->onPredictiveSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    const-string v8, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 129
    .local v2, "cp":Landroid/preference/CheckBoxPreference;
    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 130
    const-string v8, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .end local v2    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 131
    .restart local v2    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_2

    .line 132
    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 136
    .end local v0    # "actionBarSwitch":Landroid/widget/Switch;
    .end local v2    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v5    # "rightPadding":I
    :cond_2
    const-string v8, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 137
    .restart local v2    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 139
    .local v4, "pfScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    .end local v4    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_3
    const-string v8, "V1_4"

    const-string v9, "V1_5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "V1_5"

    const-string v9, "V1_5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 143
    :cond_4
    const-string v8, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 144
    .local v3, "cpLiveLanguage":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_5

    .line 145
    new-instance v8, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;

    invoke-direct {v8, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    :cond_5
    :goto_1
    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPersonalizedDataDefaultOff:Z

    if-nez v8, :cond_6

    const-string v8, "VZW"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 181
    :cond_6
    const-string v8, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 182
    .local v7, "usePredictiondata":Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_7

    .line 183
    new-instance v8, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$2;

    invoke-direct {v8, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$2;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    .end local v7    # "usePredictiondata":Landroid/preference/CheckBoxPreference;
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_DisableAutoCorrection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    .line 212
    :cond_8
    :goto_2
    return-void

    .line 110
    .end local v1    # "bar":Landroid/app/ActionBar;
    .end local v2    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v3    # "cpLiveLanguage":Landroid/preference/CheckBoxPreference;
    :cond_9
    const v8, 0x7f050204

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 173
    .restart local v1    # "bar":Landroid/app/ActionBar;
    .restart local v2    # "cp":Landroid/preference/CheckBoxPreference;
    :cond_a
    const-string v8, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 174
    .restart local v3    # "cpLiveLanguage":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_5

    .line 175
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 176
    .restart local v4    # "pfScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 204
    .end local v4    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_b
    const-string v8, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .end local v2    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 205
    .restart local v2    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_8

    .line 206
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 207
    .restart local v4    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_8

    .line 208
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 450
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showUseWifiToast(Landroid/os/Bundle;)V

    .line 451
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 433
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->bindToService()V

    .line 434
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setup()V

    .line 436
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    .line 437
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    .line 438
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 443
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 444
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->unbindFromService()V

    .line 446
    return-void
.end method

.method public setPreferenceState()V
    .locals 14

    .prologue
    const v13, 0x7f0d0227

    .line 287
    const-string v11, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 288
    .local v10, "usePredictiondata":Landroid/preference/CheckBoxPreference;
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPreferences:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype/personalizer/PersonalizerPreference;

    .line 289
    .local v5, "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    const/4 v9, 0x0

    .line 290
    .local v9, "summary":Ljava/lang/String;
    const/4 v0, 0x1

    .line 291
    .local v0, "enabled":Z
    invoke-virtual {v10}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    .line 293
    const/4 v7, 0x0

    .line 294
    .local v7, "serviceId":I
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v11}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 295
    const/4 v8, 0x0

    .line 296
    .local v8, "state":I
    const-wide/16 v3, 0x0

    .line 298
    .local v3, "lastRun":J
    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 301
    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v6

    .line 302
    .local v6, "pz":Lcom/touchtype/personalizer/Personalizer;
    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v7

    .line 303
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v8

    .line 304
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v3

    .line 314
    .end local v6    # "pz":Lcom/touchtype/personalizer/Personalizer;
    :cond_0
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 350
    :goto_2
    :pswitch_0
    invoke-virtual {v5, v9}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 309
    sget-object v11, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 310
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v11, v7}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v8

    .line 311
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v11, v7}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v3

    goto :goto_1

    .line 319
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_1
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0226

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 321
    goto :goto_2

    .line 323
    :pswitch_2
    const/4 v11, 0x7

    if-ne v7, v11, :cond_2

    const v11, 0x7f0d022b

    :goto_3
    invoke-direct {p0, v3, v4, v11, v13}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    .line 328
    goto :goto_2

    .line 323
    :cond_2
    const v11, 0x7f0d022a

    goto :goto_3

    .line 330
    :pswitch_3
    const v11, 0x7f0d0228

    invoke-direct {p0, v3, v4, v11, v13}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    .line 333
    goto :goto_2

    .line 335
    :pswitch_4
    const v11, 0x7f0d0229

    invoke-direct {p0, v3, v4, v11, v13}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    .line 338
    goto :goto_2

    .line 340
    :pswitch_5
    const v11, 0x7f0d022c

    const v12, 0x7f0d022d

    invoke-direct {p0, v3, v4, v11, v12}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    .line 342
    goto :goto_2

    .line 344
    :pswitch_6
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d022e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 346
    const/4 v0, 0x0

    goto :goto_2

    .line 356
    .end local v3    # "lastRun":J
    .end local v8    # "state":I
    :cond_3
    const-string v11, ""

    invoke-virtual {v5, v11}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    .end local v0    # "enabled":Z
    .end local v5    # "pref":Lcom/touchtype/personalizer/PersonalizerPreference;
    .end local v7    # "serviceId":I
    .end local v9    # "summary":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    if-eqz v11, :cond_5

    .line 361
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 363
    :cond_5
    return-void

    .line 314
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
