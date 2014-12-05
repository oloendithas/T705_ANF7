.class public Lcom/android/keyguard/sec/SecContextualClock;
.super Landroid/widget/LinearLayout;
.source "SecContextualClock.java"


# instance fields
.field private mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClock$1;-><init>(Lcom/android/keyguard/sec/SecContextualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClock$1;-><init>(Lcom/android/keyguard/sec/SecContextualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecContextualClock$2;-><init>(Lcom/android/keyguard/sec/SecContextualClock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClock$1;-><init>(Lcom/android/keyguard/sec/SecContextualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecContextualClock;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecContextualClock;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecContextualClock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecContextualClock;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecContextualClock;->handleUpdateClock()V

    return-void
.end method

.method private handleUpdateClock()V
    .registers 4

    .prologue
    .line 139
    const-string v1, "SecContextualClock"

    const-string v2, "handleUpdateClock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 141
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 142
    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v8, -0x2

    const/16 v9, 0x12cb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 85
    const-string v6, "SecContextualClock"

    const-string v7, "onAttachedToWindow()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v3, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 87
    .local v3, "systemLocale":Ljava/util/Locale;
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_df

    move v1, v4

    .line 88
    .local v1, "isEasyUxOn":Z
    :goto_2a
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "emergency_mode"

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_e2

    move v2, v5

    .line 90
    .local v2, "isEmergencyOn":Z
    :goto_39
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_59

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_59

    .line 91
    if-eqz v3, :cond_e5

    const-string v6, "ko"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 92
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_59
    :goto_59
    if-nez v1, :cond_5d

    if-eqz v2, :cond_f1

    .line 101
    :cond_5d
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_9a

    .line 104
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    :cond_9a
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_b1

    .line 106
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    :cond_b1
    :goto_b1
    iget-object v4, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v4, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 125
    iget-object v4, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    :cond_d9
    iget-object v4, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "isEasyUxOn":Z
    .end local v2    # "isEmergencyOn":Z
    :cond_df
    move v1, v5

    .line 87
    goto/16 :goto_2a

    .restart local v1    # "isEasyUxOn":Z
    :cond_e2
    move v2, v4

    .line 88
    goto/16 :goto_39

    .line 95
    .restart local v2    # "isEmergencyOn":Z
    :cond_e5
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 109
    :cond_f1
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_12e

    .line 112
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    :cond_12e
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_b1

    .line 114
    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_b1
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 132
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 133
    const-string v0, "SecContextualClock"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 135
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 76
    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 77
    const v0, 0x7f0b0109

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0b0108

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 79
    const v0, 0x7f0b0106

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 80
    return-void
.end method
