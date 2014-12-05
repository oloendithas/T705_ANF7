.class public Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.super Landroid/widget/FrameLayout;
.source "AdaptiveEventContainerSmall.java"


# instance fields
.field private mAdaptiveInfoArea:Landroid/widget/LinearLayout;

.field private mEmergencyView:Landroid/widget/LinearLayout;

.field private mPedoView:Landroid/widget/LinearLayout;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mWeatherView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleEmergencyUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handlePedoUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleWeatherUpdate()V

    return-void
.end method

.method private handleEmergencyUpdate()V
    .registers 6

    .prologue
    .line 60
    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "handleEmergencyUpdate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getEmergencyEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v0

    .line 62
    .local v0, "emergencyEvent":Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    if-nez v0, :cond_20

    .line 63
    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "emergencyEvent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    :cond_1f
    :goto_1f
    return-void

    .line 68
    :cond_20
    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1f

    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 71
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_31

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    :cond_31
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 75
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1f
.end method

.method private handlePedoUpdate()V
    .registers 6

    .prologue
    .line 80
    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "handlePedoUpdate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getPedometerEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v1

    .line 82
    .local v1, "pedoEvent":Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    if-nez v1, :cond_20

    .line 83
    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "pedoEvent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 97
    :cond_1f
    :goto_1f
    return-void

    .line 88
    :cond_20
    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1f

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_31

    .line 92
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    :cond_31
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 95
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1f
.end method

.method private handleWeatherUpdate()V
    .registers 6

    .prologue
    .line 100
    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "handleWeatherUpdate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v2

    .line 102
    .local v2, "weatherEvent":Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    if-nez v2, :cond_1b

    .line 103
    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "weatherEvent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1a
    :goto_1a
    return-void

    .line 107
    :cond_1b
    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2c

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    :cond_2c
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1a
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 14

    .prologue
    const/4 v12, -0x2

    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 146
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 148
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_additional_info"

    invoke-static {v10, v11, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v7, :cond_c8

    move v1, v7

    .line 149
    .local v1, "isAdditionalInfoEnabled":Z
    :goto_17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/sec/ContextualEventManager;->isClockTop()Z

    move-result v2

    .line 150
    .local v2, "isClockTop":Z
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_additional_weather"

    invoke-static {v10, v11, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v7, :cond_cb

    move v5, v7

    .line 153
    .local v5, "isWeatherVisible":Z
    :goto_32
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_additional_steps"

    invoke-static {v10, v11, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v7, :cond_ce

    move v4, v7

    .line 157
    .local v4, "isPedoVisible":Z
    :goto_41
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfoTrue()Z

    move-result v6

    .line 160
    .local v6, "weatherInfoTrue":Z
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_mode"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_d1

    move v0, v7

    .line 161
    .local v0, "enableEmergency":Z
    :goto_5a
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "kids_home_mode"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_d3

    move v3, v7

    .line 162
    .local v3, "isKidsMode":Z
    :goto_69
    if-nez v0, :cond_6d

    if-eqz v3, :cond_6e

    .line 163
    :cond_6d
    const/4 v1, 0x0

    .line 165
    :cond_6e
    const-string v7, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isWeatherVisible, isClockTop, mWeatherInfoTrue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v1, :cond_df

    if-eqz v2, :cond_df

    .line 167
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherView:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_b1

    .line 168
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_d5

    if-eqz v6, :cond_d5

    move v7, v8

    :goto_a9
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 169
    if-eqz v5, :cond_b1

    .line 170
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateWeatherContainer()V

    .line 173
    :cond_b1
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_d7

    .line 174
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_ba

    move v9, v8

    :cond_ba
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 175
    if-eqz v4, :cond_c2

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    .line 181
    :cond_c2
    :goto_c2
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :goto_c7
    return-void

    .end local v0    # "enableEmergency":Z
    .end local v1    # "isAdditionalInfoEnabled":Z
    .end local v2    # "isClockTop":Z
    .end local v3    # "isKidsMode":Z
    .end local v4    # "isPedoVisible":Z
    .end local v5    # "isWeatherVisible":Z
    .end local v6    # "weatherInfoTrue":Z
    :cond_c8
    move v1, v8

    .line 148
    goto/16 :goto_17

    .restart local v1    # "isAdditionalInfoEnabled":Z
    .restart local v2    # "isClockTop":Z
    :cond_cb
    move v5, v8

    .line 150
    goto/16 :goto_32

    .restart local v5    # "isWeatherVisible":Z
    :cond_ce
    move v4, v8

    .line 153
    goto/16 :goto_41

    .restart local v4    # "isPedoVisible":Z
    .restart local v6    # "weatherInfoTrue":Z
    :cond_d1
    move v0, v8

    .line 160
    goto :goto_5a

    .restart local v0    # "enableEmergency":Z
    :cond_d3
    move v3, v8

    .line 161
    goto :goto_69

    .restart local v3    # "isKidsMode":Z
    :cond_d5
    move v7, v9

    .line 168
    goto :goto_a9

    .line 179
    :cond_d7
    const-string v7, "AdaptiveEventContainerSmall"

    const-string v9, "mPedoView == null"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 183
    :cond_df
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 184
    if-eqz v0, :cond_ef

    .line 185
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateEmergencyContainer()V

    .line 186
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c7

    .line 188
    :cond_ef
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c7
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 196
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 135
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const v0, 0x7f0b00f4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    .line 137
    const v0, 0x7f0b00f5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherView:Landroid/widget/LinearLayout;

    .line 138
    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    .line 139
    const v0, 0x7f0b00f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    .line 141
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventContainerSmall(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    .line 142
    return-void
.end method

.method public updateAdaptiveContainer(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 232
    packed-switch p1, :pswitch_data_c

    .line 243
    :goto_3
    return-void

    .line 234
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateEmergencyContainer()V

    goto :goto_3

    .line 237
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    goto :goto_3

    .line 232
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method protected updateEmergencyContainer()V
    .registers 4

    .prologue
    const/16 v2, 0x132e

    .line 215
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updateEmergencyContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    return-void
.end method

.method protected updatePedoContainer()V
    .registers 4

    .prologue
    const/16 v2, 0x132f

    .line 199
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updatePedoContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    return-void
.end method

.method protected updateWeatherContainer()V
    .registers 4

    .prologue
    const/16 v2, 0x1330

    .line 207
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updateWeatherContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    return-void
.end method
