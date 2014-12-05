.class public Lcom/android/keyguard/sec/SecEmergencyStatusContainer;
.super Landroid/widget/LinearLayout;
.source "SecEmergencyStatusContainer.java"


# static fields
.field public static final EMERGENCY_TIMER_ICON:[I

.field private static cfmsService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field private mEmergencyBatteryText:Landroid/widget/TextView;

.field private mEmergencyDevider:Landroid/view/View;

.field private mEmergencyTimerImage:Landroid/widget/ImageView;

.field private mEmergencyTimerText:Landroid/widget/TextView;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mStrEmergencyTimerD:Ljava/lang/String;

.field private mStrEmergencyTimerH:Ljava/lang/String;

.field private mStrEmergencyTimerM:Ljava/lang/String;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    .line 65
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->EMERGENCY_TIMER_ICON:[I

    return-void

    nop

    :array_e
    .array-data 4
        0x7f0201bf
        0x7f0201c0
        0x7f0201c1
        0x7f0201c2
        0x7f0201c3
        0x7f0201c4
        0x7f0201c5
        0x7f0201c6
        0x7f0201c7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;-><init>(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    new-instance v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;-><init>(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    new-instance v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;-><init>(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecEmergencyStatusContainer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->updateEmergencyContainer(II)V

    return-void
.end method

.method private updateEmergencyContainer(II)V
    .registers 15
    .param p1, "batteryLevel"    # I
    .param p2, "batteryStatus"    # I

    .prologue
    .line 115
    const/4 v2, 0x0

    .local v2, "iStandbyTime_min":I
    const/4 v3, 0x0

    .line 117
    .local v3, "iUsagetime_min":I
    const-string v9, "SecEmergencyStatusContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive() : batteryLevel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-nez p1, :cond_1d

    .line 119
    const/4 p1, 0x1

    .line 121
    :cond_1d
    const/4 v9, 0x5

    if-le p1, v9, :cond_d3

    .line 122
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_2a

    .line 123
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :cond_2a
    :try_start_2a
    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v9, :cond_3c

    .line 128
    const-string v9, "CustomFrequencyManagerService"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 129
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_3c

    .line 130
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v9

    sput-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    .line 134
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_3c
    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v9, :cond_65

    .line 135
    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v9}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v2

    .line 136
    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/os/ICustomFrequencyManager;->getRemainUsageTime(I)I

    move-result v3

    .line 137
    const-string v9, "SecEmergencyStatusContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive() : returned value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_65} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_65} :catch_c7

    .line 153
    :cond_65
    :goto_65
    const v8, 0x7f0201bf

    .line 157
    .local v8, "timerResourceId":I
    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->EMERGENCY_TIMER_ICON:[I

    array-length v9, v9

    add-int/lit8 v10, p1, -0x1

    div-int/lit8 v10, v10, 0xb

    sub-int/2addr v9, v10

    add-int/lit8 v7, v9, -0x1

    .line 159
    .local v7, "timerIndex":I
    if-gez v7, :cond_75

    .line 160
    const/4 v7, 0x0

    .line 162
    :cond_75
    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->EMERGENCY_TIMER_ICON:[I

    aget v8, v9, v7

    .line 164
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_82

    .line 165
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    :cond_82
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyBatteryText:Landroid/widget/TextView;

    if-eqz v9, :cond_9e

    .line 170
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyBatteryText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_9e
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    if-eqz v9, :cond_ba

    .line 175
    int-to-float v9, v2

    const/high16 v10, 0x43100000

    div-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x41200000

    div-float v4, v9, v10

    .line 176
    .local v4, "standByTimeDay":F
    div-int/lit8 v5, v2, 0x3c

    .line 177
    .local v5, "standByTimeHrs":I
    rem-int/lit8 v6, v2, 0x3c

    .line 179
    .local v6, "standByTimeMin":I
    if-nez v3, :cond_df

    .line 180
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    const v10, 0x7f06012c

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 187
    .end local v4    # "standByTimeDay":F
    .end local v5    # "standByTimeHrs":I
    .end local v6    # "standByTimeMin":I
    :cond_ba
    :goto_ba
    return-void

    .line 139
    .end local v7    # "timerIndex":I
    .end local v8    # "timerResourceId":I
    :catch_bb
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    const-string v9, "SecEmergencyStatusContainer"

    const-string v10, "onReceive() : getStandbyTime() failed by RemoteException"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_65

    .line 142
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_c7
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "SecEmergencyStatusContainer"

    const-string v10, "onReceive() : getStandbyTime() failed"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_65

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d3
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_65

    .line 148
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_65

    .line 181
    .restart local v4    # "standByTimeDay":F
    .restart local v5    # "standByTimeHrs":I
    .restart local v6    # "standByTimeMin":I
    .restart local v7    # "timerIndex":I
    .restart local v8    # "timerResourceId":I
    :cond_df
    const/high16 v9, 0x3f800000

    cmpl-float v9, v4, v9

    if-ltz v9, :cond_fe

    .line 182
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ba

    .line 184
    :cond_fe
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerM:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ba
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 93
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_mode"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_2e

    move v0, v2

    .line 94
    .local v0, "isEmergencyMode":Z
    :goto_15
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ultra_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_30

    move v1, v2

    .line 96
    .local v1, "isUltraPowerSavingMode":Z
    :goto_24
    if-nez v0, :cond_32

    if-nez v1, :cond_32

    .line 97
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :goto_2d
    return-void

    .end local v0    # "isEmergencyMode":Z
    .end local v1    # "isUltraPowerSavingMode":Z
    :cond_2e
    move v0, v3

    .line 93
    goto :goto_15

    .restart local v0    # "isEmergencyMode":Z
    :cond_30
    move v1, v3

    .line 94
    goto :goto_24

    .line 101
    .restart local v1    # "isUltraPowerSavingMode":Z
    :cond_32
    const v2, 0x7f0b0120

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyBatteryText:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f0b0123

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0b0122

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    .line 104
    const v2, 0x7f0b0121

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyDevider:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerD:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerH:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerM:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 111
    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_2d
.end method
