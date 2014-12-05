.class synthetic Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;
.super Ljava/lang/Object;
.source "KeyguardEffectViewMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

.field static final synthetic $SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 542
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->values()[Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    :try_start_9
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->ripple:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_cc

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_c9

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->watercolor:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_c6

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_c3

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->blind:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_c0

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->justLockLive:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_be

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->brilliantcut:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_bc

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_ba

    .line 492
    :goto_62
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->values()[Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I

    :try_start_6b
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->lens:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_76} :catch_b8

    :goto_76
    :try_start_76
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_81} :catch_b6

    :goto_81
    :try_start_81
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8c} :catch_b4

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->massRipple:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_97} :catch_b2

    :goto_97
    :try_start_97
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->massTension:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a2} :catch_b0

    :goto_a2
    :try_start_a2
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ad} :catch_ae

    :goto_ad
    return-void

    :catch_ae
    move-exception v0

    goto :goto_ad

    :catch_b0
    move-exception v0

    goto :goto_a2

    :catch_b2
    move-exception v0

    goto :goto_97

    :catch_b4
    move-exception v0

    goto :goto_8c

    :catch_b6
    move-exception v0

    goto :goto_81

    :catch_b8
    move-exception v0

    goto :goto_76

    .line 542
    :catch_ba
    move-exception v0

    goto :goto_62

    :catch_bc
    move-exception v0

    goto :goto_56

    :catch_be
    move-exception v0

    goto :goto_4b

    :catch_c0
    move-exception v0

    goto/16 :goto_40

    :catch_c3
    move-exception v0

    goto/16 :goto_35

    :catch_c6
    move-exception v0

    goto/16 :goto_2a

    :catch_c9
    move-exception v0

    goto/16 :goto_1f

    :catch_cc
    move-exception v0

    goto/16 :goto_14
.end method
