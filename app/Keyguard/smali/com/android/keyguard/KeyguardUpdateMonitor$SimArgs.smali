.class Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCardConstants$State;

.field public subscription:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 3
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "sub"    # I

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 418
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->subscription:I

    .line 419
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;
    .registers 9
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 424
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 425
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 427
    :cond_15
    const-string v5, "subscription"

    invoke-virtual {p0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 428
    .local v4, "subscription":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 429
    const-string v5, "simSlot"

    invoke-virtual {p0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 431
    :cond_27
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SIM_STATE_CHANGED intent received on sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v5, "ss"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v5, "ABSENT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 435
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "absentReason":Ljava/lang/String;
    const-string v5, "PERM_DISABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 440
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 471
    .end local v0    # "absentReason":Ljava/lang/String;
    .local v2, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_5d
    new-instance v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v5, v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-object v5

    .line 442
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_63
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d

    .line 444
    .end local v0    # "absentReason":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_66
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 445
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d

    .line 446
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_71
    const-string v5, "LOCKED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 447
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v5, "PIN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 450
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d

    .line 451
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8a
    const-string v5, "PUK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 452
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d

    .line 453
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_95
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSIMPersoFeatureEnable()Z

    move-result v5

    if-eqz v5, :cond_a6

    const-string v5, "PERSO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 455
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d

    .line 456
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a6
    const-string v5, "PERSO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 457
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d

    .line 459
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_b1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d

    .line 461
    .end local v1    # "lockedReason":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_b4
    const-string v5, "CARD_IO_ERROR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 462
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d

    .line 463
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_bf
    const-string v5, "LOADED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf

    const-string v5, "IMSI"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 467
    :cond_cf
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d

    .line 469
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_d2
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5d
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
