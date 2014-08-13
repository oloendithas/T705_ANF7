.class public final Lcom/android/server/ssrm/fgapps/TouchBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;


# static fields
.field static final sJpnBoostOffApps:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sJpnSipBoostApps:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final MESSENGERS:[Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field final TOUCH_BOOSTER_DEFAULT:I

.field final TOUCH_KEY_BOOSTER_DEFAULT:I

.field lastTouchBoosterValue:I

.field lastTouchKeyBoosterValue:I

.field mBrowserVisible:Z

.field mIsHeavyAppInForeground:Z

.field mIsSetDefault:Z

.field mJpnBoostOffVisible:Z

.field mJpnSipBoostVisible:Z

.field mMessengerVisible:Z

.field mSIPVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/16 v3, 0x13

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnBoostOffApps:Ljava/util/Hashtable;

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    .line 57
    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnBoostOffApps:Ljava/util/Hashtable;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnBoostOffApps:Ljava/util/Hashtable;

    const/16 v1, 0x20

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    const/16 v1, 0x1c

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    const/16 v1, 0x1b

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    const/16 v1, 0x1a

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    .line 61
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x19
        0x16
        0x15
        0x19
        0x11
        0xa
        0x1b
        0x19
        0x11
        0x1b
        0x1d
        0x1f
    .end array-data

    .line 67
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    .line 71
    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    .line 76
    :array_4
    .array-data 4
        0x10
        0xa
        0x54
        0x19
        0x15
        0x54
        0x14
        0xe
        0xe
        0x1e
        0x15
        0x19
        0x15
        0x17
        0x15
        0x54
        0x19
        0x1b
        0x8
        0x8
        0x13
        0x1f
        0x8
        0x17
        0x1b
        0x13
        0x16
    .end array-data

    .line 81
    :array_5
    .array-data 4
        0x10
        0xa
        0x54
        0x14
        0x1b
        0xc
        0x1f
        0x8
        0x54
        0x16
        0x13
        0x14
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data

    .line 85
    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3
        0x15
        0xf
        0xe
        0xf
        0x18
        0x1f
    .end array-data

    .line 90
    :array_7
    .array-data 4
        0x10
        0xa
        0x54
        0x19
        0x15
        0x54
        0x10
        0x15
        0x12
        0x15
        0x9
        0xa
        0x1b
        0x19
        0x1f
        0x54
        0x10
        0x15
        0x8
        0xe
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 36
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->MESSENGERS:[Ljava/lang/String;

    .line 95
    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TOUCH_BOOSTER_DEFAULT:I

    .line 97
    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TOUCH_KEY_BOOSTER_DEFAULT:I

    .line 99
    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    .line 101
    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    .line 103
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsSetDefault:Z

    .line 201
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    .line 205
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnBoostOffVisible:Z

    .line 207
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnSipBoostVisible:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    .line 211
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsHeavyAppInForeground:Z

    .line 41
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x2e
        0x15
        0xf
        0x19
        0x12
        0x38
        0x15
        0x15
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    .line 43
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data
.end method

.method private calculateTouchBoosterLevelForK3gKq()I
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x2

    .line 160
    .local v0, "level":I
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    if-eqz v1, :cond_4

    .line 161
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    if-eqz v1, :cond_1

    .line 162
    const/4 v0, 0x3

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->isEmailApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 168
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-eqz v1, :cond_0

    .line 169
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private calculateTouchBoosterLevelForKlte()I
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x2

    .line 138
    .local v0, "level":I
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    if-eqz v1, :cond_4

    .line 139
    const-string v1, "com.android.mms"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const/4 v0, 0x5

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnSipBoostVisible:Z

    if-eqz v1, :cond_2

    .line 142
    const/4 v0, 0x5

    goto :goto_0

    .line 143
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    if-eqz v1, :cond_3

    .line 144
    const/4 v0, 0x3

    goto :goto_0

    .line 146
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-eqz v1, :cond_5

    .line 149
    const/4 v0, 0x3

    goto :goto_0

    .line 150
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnBoostOffVisible:Z

    if-eqz v1, :cond_0

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateTouchBoosterLevelForOthers()I
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x2

    .line 178
    .local v0, "level":I
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    if-eqz v1, :cond_2

    .line 179
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    if-eqz v1, :cond_1

    .line 180
    const/4 v0, 0x3

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-eqz v1, :cond_4

    .line 185
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    if-eqz v1, :cond_3

    .line 186
    const/4 v0, 0x4

    goto :goto_0

    .line 188
    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    .line 190
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsHeavyAppInForeground:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_H:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    if-eqz v1, :cond_0

    .line 191
    :cond_5
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method calculateCurrentTouchKeyBooster()I
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method calculateTouchBoosterLevel()I
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/android/server/ssrm/SSRMUtil;->isStabilityTestCondition()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingModeLimitPerformance()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 127
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_3

    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevelForK3gKq()I

    move-result v0

    goto :goto_0

    .line 129
    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    if-eqz v0, :cond_5

    .line 130
    :cond_4
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevelForKlte()I

    move-result v0

    goto :goto_0

    .line 132
    :cond_5
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevelForOthers()I

    move-result v0

    goto :goto_0
.end method

.method public onEmergencyModeChanged()V
    .locals 0

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    .line 257
    return-void
.end method

.method public onFgAppChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 215
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    .line 216
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "fgPackageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 223
    :cond_0
    sget-object v6, Lcom/android/server/ssrm/fgapps/TouchBooster;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v5

    .line 224
    .local v5, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v5, v1}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 225
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    .line 227
    :cond_1
    invoke-virtual {v5, v1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsHeavyAppInForeground:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->MESSENGERS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 230
    .local v4, "messengerPackageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 231
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    .line 236
    .end local v4    # "messengerPackageName":Ljava/lang/String;
    :cond_2
    sget-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_JPN:Z

    if-eqz v6, :cond_3

    .line 237
    sget-object v6, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnBoostOffApps:Ljava/util/Hashtable;

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnBoostOffVisible:Z

    .line 238
    sget-object v6, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnSipBoostVisible:Z

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    goto :goto_0

    .line 229
    .restart local v4    # "messengerPackageName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 247
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 0

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    .line 262
    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    .line 120
    return-void
.end method

.method public onUltraPowerSavingModeChanged()V
    .locals 0

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    .line 252
    return-void
.end method

.method updateTouchBooster()V
    .locals 3

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevel()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    .line 108
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boost_level,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateCurrentTouchKeyBooster()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateCurrentTouchKeyBooster()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    .line 112
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchKeyBooster(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void
.end method
