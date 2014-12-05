.class public Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;


# instance fields
.field private final CHANGED_TYPE_ADDED:I

.field private final CHANGED_TYPE_REMOVED:I

.field private final CHANGED_TYPE_UPDATED:I

.field private final MAGAZINE_CARD_INTENT:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "com.system.action.MAGAZINE_CARD"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->MAGAZINE_CARD_INTENT:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->CHANGED_TYPE_ADDED:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->CHANGED_TYPE_UPDATED:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->CHANGED_TYPE_REMOVED:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    .line 63
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->registerBroadcastReceiver()V

    .line 64
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->sInstance:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->sInstance:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    .line 71
    :cond_b
    sget-object v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->sInstance:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    return-object v0
.end method

.method private isSecureMode()Z
    .registers 5

    .prologue
    .line 125
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "mSecurityModel":Lcom/android/keyguard/KeyguardSecurityModel;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 128
    .local v1, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 129
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "isSecureMode : isSecureMode = false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v2, 0x0

    .line 133
    :goto_1b
    return v2

    .line 132
    :cond_1c
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "isSecureMode : isSecureMode = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method private isSecurityFiltered(Lcom/samsung/android/magazinecard/MagazineCardRecord;)Z
    .registers 5
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    const/4 v1, 0x1

    .line 143
    iget-object v2, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v0, v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    .line 145
    .local v0, "cardSecurityLevel":I
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 146
    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_SECURE_MODE_ONLY:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_16

    .line 154
    :cond_10
    :goto_10
    return v1

    .line 150
    :cond_11
    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

    and-int/2addr v2, v0

    if-nez v2, :cond_10

    .line 154
    :cond_16
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .prologue
    .line 241
    const-string v1, "KeyguardMagazineCardManager"

    const-string v2, "registerBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.system.action.MAGAZINE_CARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void
.end method


# virtual methods
.method public getCards()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 77
    .local v8, "startTime":J
    const/4 v1, 0x0

    .line 78
    .local v1, "cardRecordIdArray":[I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/magazinecard/MagazineCardRecord;>;"
    const v2, 0x7fffffff

    .line 82
    .local v2, "currentUserId":I
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iget v2, v11, Landroid/content/pm/UserInfo;->id:I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1f

    .line 88
    const v11, 0x7fffffff

    if-ne v2, v11, :cond_25

    move-object v0, v10

    .line 116
    .end local v0    # "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/magazinecard/MagazineCardRecord;>;"
    :goto_1e
    return-object v0

    .line 83
    .restart local v0    # "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/magazinecard/MagazineCardRecord;>;"
    :catch_1f
    move-exception v3

    .line 84
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v10

    .line 85
    goto :goto_1e

    .line 93
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_25
    iget-object v10, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mContext:Landroid/content/Context;

    const-string v11, "magazinecardservice"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/magazinecard/MagazineCardManager;

    .line 96
    .local v5, "mcm":Lcom/samsung/android/magazinecard/MagazineCardManager;
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->isSecureMode()Z

    move-result v10

    invoke-virtual {v5, v2, v10}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getCardRecordIdList(IZ)[I

    move-result-object v1

    .line 98
    if-nez v1, :cond_41

    .line 99
    const-string v10, "KeyguardMagazineCardManager"

    const-string v11, "getCards : No cards"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 103
    :cond_41
    const-string v10, "KeyguardMagazineCardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCards : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cards available"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_61
    array-length v10, v1

    if-ge v4, v10, :cond_8b

    .line 106
    aget v7, v1, v4

    .line 107
    .local v7, "recordId":I
    invoke-virtual {v5, v7}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;

    move-result-object v6

    .line 108
    .local v6, "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    if-nez v6, :cond_87

    .line 109
    const-string v10, "KeyguardMagazineCardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCards : Cannot get MagazineCardRecord - RID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 111
    :cond_87
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 115
    .end local v6    # "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .end local v7    # "recordId":I
    :cond_8b
    const-string v10, "KeyguardMagazineCardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCards : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms elapsed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e
.end method

.method public notifyItemChanged(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 7
    .param p1, "changeType"    # I
    .param p2, "changedCard"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 202
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "notifyItemChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 237
    :cond_13
    :goto_13
    return-void

    .line 207
    :cond_14
    invoke-direct {p0, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->isSecurityFiltered(Lcom/samsung/android/magazinecard/MagazineCardRecord;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 208
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "notifyItemChanged - This card is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 212
    :cond_22
    packed-switch p1, :pswitch_data_7e

    goto :goto_13

    .line 214
    :pswitch_26
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "CHANGED_TYPE_ADDED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .line 216
    .local v1, "listener":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    invoke-interface {v1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;->cardAdded(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_33

    .line 222
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    :pswitch_43
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "CHANGED_TYPE_UPDATED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .line 224
    .restart local v1    # "listener":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    invoke-interface {v1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;->cardUpdated(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_50

    .line 230
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    :pswitch_60
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "CHANGED_TYPE_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .line 232
    .restart local v1    # "listener":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    invoke-interface {v1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;->cardRemoved(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_6d

    .line 212
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_43
        :pswitch_60
    .end packed-switch
.end method

.method public registerCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V
    .registers 7
    .param p1, "newListener"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .prologue
    .line 266
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 278
    :goto_4
    return-void

    .line 269
    :cond_5
    const-string v2, "KeyguardMagazineCardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCardChangedListner() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .line 271
    .local v1, "listener":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    if-ne v1, p1, :cond_23

    .line 272
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "Do not register. Because it is duplicated."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 277
    .end local v1    # "listener":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    :cond_39
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public unregisterCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V
    .registers 7
    .param p1, "newListener"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 289
    :cond_4
    return-void

    .line 284
    :cond_5
    const-string v2, "KeyguardMagazineCardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterCardChangedListner() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .line 286
    .local v1, "listener":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    if-ne v1, p1, :cond_23

    .line 287
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_23
.end method
