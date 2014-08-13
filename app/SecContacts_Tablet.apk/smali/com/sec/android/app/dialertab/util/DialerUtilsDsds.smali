.class public Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;
.super Ljava/lang/Object;
.source "DialerUtilsDsds.java"


# static fields
.field public static final DS_SIM_DUAL_SIM:I = 0x3

.field public static final DS_SIM_DUAL_SIM1_OFF_SIM2_ON:I = 0x4

.field public static final DS_SIM_NO:I = 0x0

.field public static final DS_SIM_SIM1_ONLY:I = 0x1

.field public static final DS_SIM_SIM2_ONLY:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "DialerUtilsDsds"

.field public static final SIM_SLOT_1:I = 0x0

.field public static final SIM_SLOT_2:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static getDataSubscription()I
    .locals 1

    .prologue
    .line 72
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultSimForVoiceCalls()I
    .locals 1

    .prologue
    .line 93
    const-string v0, "getDefaultSimForVoiceCalls()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 82
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public static getDualSimState(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public static getInsertedSimCount()I
    .locals 1

    .prologue
    .line 103
    const-string v0, "getInsertedSimCount()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    return v0
.end method

.method public static getSettingIconField(I)Ljava/lang/String;
    .locals 1
    .param p0, "simId"    # I

    .prologue
    .line 131
    const-string v0, "getSettingIconField()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 133
    const-string v0, "select_icon_2"

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "select_icon_1"

    goto :goto_0
.end method

.method public static getSettingNameField(I)Ljava/lang/String;
    .locals 1
    .param p0, "simId"    # I

    .prologue
    .line 123
    const-string v0, "getSettingNameField()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 125
    const-string v0, "select_name_2"

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "select_name_1"

    goto :goto_0
.end method

.method public static getSubscription(Lcom/android/internal/telephony/Phone;)I
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 67
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p0, "simSlot"    # I

    .prologue
    .line 118
    const-string v0, "getVoiceMailNumber()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVoiceSubscription()I
    .locals 1

    .prologue
    .line 77
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualSIM()Z
    .locals 1

    .prologue
    .line 98
    const-string v0, "isDualSIM()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public static isIdle(I)Z
    .locals 1
    .param p0, "simSlot"    # I

    .prologue
    .line 113
    const-string v0, "isidle()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public static isOneSIMcardsInsertedInSlot2()Z
    .locals 1

    .prologue
    .line 88
    const-string v0, "isOneSIMcardsInsertedInSlot2()"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->log(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "DialerUtilsDsds"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method
