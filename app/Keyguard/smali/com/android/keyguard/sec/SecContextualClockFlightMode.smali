.class public Lcom/android/keyguard/sec/SecContextualClockFlightMode;
.super Landroid/widget/LinearLayout;
.source "SecContextualClockFlightMode.java"


# instance fields
.field private mAmPmFlightKor:Landroid/widget/TextClock;

.field private mAmPmFlightOpen:Landroid/widget/TextClock;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$2;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecContextualClockFlightMode;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecContextualClockFlightMode;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->handleUpdateClock()V

    return-void
.end method

.method private handleUpdateClock()V
    .registers 4

    .prologue
    .line 108
    const-string v1, "SecContextualClockFlightMode"

    const-string v2, "handleUpdateClock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 111
    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x12cb

    .line 79
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 82
    .local v1, "systemLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    if-eqz v2, :cond_32

    .line 83
    if-eqz v1, :cond_56

    const-string v2, "ko"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 84
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_32
    :goto_32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 96
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    :cond_50
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    return-void

    .line 87
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_56
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v2, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 104
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 72
    const v0, 0x7f0b010e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mDate:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0b010d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    .line 74
    const v0, 0x7f0b010b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    .line 75
    return-void
.end method
