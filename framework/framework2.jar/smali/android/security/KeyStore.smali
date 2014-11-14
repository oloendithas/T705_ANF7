.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private lMdmService:Landroid/sec/enterprise/IEDMProxy;

.field private final mBinder:Landroid/security/IKeystoreService;

.field private mError:I


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .registers 3
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    .line 80
    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    .line 82
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    .line 84
    return-void
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .registers 2

    .prologue
    .line 87
    const-string v1, "android.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 89
    .local v0, "keystore":Landroid/security/IKeystoreService;
    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method static getKeyTypeForAlgorithm(Ljava/lang/String;)I
    .registers 4
    .param p0, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 94
    const/4 v0, 0x6

    .line 98
    :goto_9
    return v0

    .line 95
    :cond_a
    const-string v0, "DSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 96
    const/16 v0, 0x74

    goto :goto_9

    .line 97
    :cond_15
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 98
    const/16 v0, 0x198

    goto :goto_9

    .line 100
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemUidAsUser(I)I
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 517
    const v0, 0x186a0

    mul-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private refreshRollbackUserKeystore(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 507
    iget-object v1, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_9

    .line 509
    :try_start_4
    iget-object v1, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->notifyUserKeystoreUnlocked(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 514
    :cond_9
    :goto_9
    return-void

    .line 510
    :catch_a
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Failed talking with Certificate Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method


# virtual methods
.method public clearUid(I)Z
    .registers 8
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Landroid/security/IKeystoreService;->clear_uid(J)I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_8} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_18

    move-result v3

    if-ne v3, v1, :cond_d

    :goto_b
    move v2, v1

    .line 492
    :goto_c
    return v2

    :cond_d
    move v1, v2

    .line 486
    goto :goto_b

    .line 487
    :catch_f
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 490
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_18
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 248
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 245
    goto :goto_a

    .line 246
    :catch_d
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 248
    goto :goto_a
.end method

.method public delKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 401
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delKey(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 393
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->del_key(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 396
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 393
    goto :goto_a

    .line 394
    :catch_d
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 396
    goto :goto_a
.end method

.method public delKeyAsUser(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "targetUid"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p3}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v4

    invoke-interface {v3, p1, p2, v4}, Landroid/security/IKeystoreService;->del_key_as_user(Ljava/lang/String;II)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_11

    move-result v3

    if-ne v3, v1, :cond_f

    .line 225
    :goto_e
    return v1

    :cond_f
    move v1, v2

    .line 222
    goto :goto_e

    .line 223
    :catch_11
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 225
    goto :goto_e
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 235
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 232
    goto :goto_a

    .line 233
    :catch_d
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 235
    goto :goto_a
.end method

.method public deleteAsUser(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "targetUid"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p3}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v4

    invoke-interface {v3, p1, p2, v4}, Landroid/security/IKeystoreService;->del_as_user(Ljava/lang/String;II)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_11

    move-result v3

    if-ne v3, v1, :cond_f

    .line 190
    :goto_e
    return v1

    :cond_f
    move v1, v2

    .line 187
    goto :goto_e

    .line 188
    :catch_11
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 190
    goto :goto_e
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 9
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 463
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 460
    goto :goto_a

    .line 461
    :catch_d
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 463
    goto :goto_a
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # [[B

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIII[[B)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_13

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    .line 369
    :goto_10
    return v0

    .line 366
    :cond_11
    const/4 v0, 0x0

    goto :goto_10

    .line 367
    :catch_13
    move-exception v7

    .line 368
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public get(Ljava/lang/String;)[B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 130
    :goto_6
    return-object v1

    .line 128
    :catch_7
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getByUid(Ljava/lang/String;I)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get_by_uid(Ljava/lang/String;I)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 156
    :goto_6
    return-object v1

    .line 154
    :catch_7
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 497
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getPubkey(Ljava/lang/String;)[B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get_pubkey(Ljava/lang/String;)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 387
    :goto_6
    return-object v1

    .line 385
    :catch_7
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getmtime(Ljava/lang/String;)J
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, -0x1

    .line 446
    :try_start_2
    iget-object v5, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v5, p1}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;)J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_11

    move-result-wide v1

    .line 447
    .local v1, "millis":J
    cmp-long v5, v1, v3

    if-nez v5, :cond_d

    .line 454
    .end local v1    # "millis":J
    :goto_c
    return-wide v3

    .line 451
    .restart local v1    # "millis":J
    :cond_d
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    goto :goto_c

    .line 452
    .end local v1    # "millis":J
    :catch_11
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "KeyStore"

    const-string v6, "Cannot connect to keystore"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public grant(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 427
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 424
    goto :goto_a

    .line 425
    :catch_d
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 427
    goto :goto_a
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .registers 9
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 378
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 375
    goto :goto_a

    .line 376
    :catch_d
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 378
    goto :goto_a
.end method

.method public importKeyAsUser(Ljava/lang/String;[BIII)Z
    .registers 15
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "targetUid"    # I
    .param p4, "flags"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 178
    :try_start_2
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p5}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->import_key_as_user(Ljava/lang/String;[BIII)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_16

    move-result v0

    if-ne v0, v7, :cond_14

    move v0, v7

    .line 181
    :goto_13
    return v0

    :cond_14
    move v0, v8

    .line 178
    goto :goto_13

    .line 179
    :catch_16
    move-exception v6

    .line 180
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    .line 181
    goto :goto_13
.end method

.method public isEmpty()Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "count":I
    :try_start_2
    const-string v8, "USRPKEY_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "pPrKey":[Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 326
    array-length v8, v3

    add-int/2addr v0, v8

    .line 329
    :cond_e
    const-string v8, "USRCERT_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "pUserCert":[Ljava/lang/String;
    if-eqz v4, :cond_1a

    .line 332
    array-length v8, v4

    add-int/2addr v0, v8

    .line 335
    :cond_1a
    const-string v8, "CACERT_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "pCaCert":[Ljava/lang/String;
    if-eqz v2, :cond_26

    .line 338
    array-length v8, v2

    add-int/2addr v0, v8

    .line 341
    :cond_26
    const-string v8, "WAPIAS_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "pWapiAsCert":[Ljava/lang/String;
    if-eqz v5, :cond_32

    .line 344
    array-length v8, v5

    add-int/2addr v0, v8

    .line 347
    :cond_32
    const-string v8, "WAPIUSR_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "pWapiUserCert":[Ljava/lang/String;
    if-eqz v6, :cond_3e

    .line 350
    array-length v8, v6

    add-int/2addr v0, v8

    .line 353
    :cond_3e
    iget-object v8, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v8}, Landroid/security/IKeystoreService;->zero()I
    :try_end_43
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_43} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_43} :catch_54

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_4a

    if-nez v0, :cond_4a

    const/4 v7, 0x1

    .line 359
    .end local v2    # "pCaCert":[Ljava/lang/String;
    .end local v3    # "pPrKey":[Ljava/lang/String;
    .end local v4    # "pUserCert":[Ljava/lang/String;
    .end local v5    # "pWapiAsCert":[Ljava/lang/String;
    .end local v6    # "pWapiUserCert":[Ljava/lang/String;
    :cond_4a
    :goto_4a
    return v7

    .line 354
    :catch_4b
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "KeyStore"

    const-string v9, "Cannot connect to keystore"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 357
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_54
    move-exception v1

    .line 358
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "KeyStore"

    const-string v9, "Cannot connect to keystore"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a
.end method

.method public isHardwareBacked()Z
    .registers 2

    .prologue
    .line 469
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_d} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_1d

    move-result v3

    if-ne v3, v1, :cond_12

    :goto_10
    move v2, v1

    .line 480
    :goto_11
    return v2

    :cond_12
    move v1, v2

    .line 474
    goto :goto_10

    .line 475
    :catch_14
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 478
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1d
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public isUnlocked()Z
    .registers 3

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public lock()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->lock()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 298
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 295
    goto :goto_a

    .line 296
    :catch_d
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 298
    goto :goto_a
.end method

.method public password(Ljava/lang/String;)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->password(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_18

    .line 282
    .local v1, "ret":Z
    :goto_a
    if-eqz v1, :cond_17

    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_17} :catch_1a

    .line 289
    .end local v1    # "ret":Z
    :cond_17
    :goto_17
    return v1

    :cond_18
    move v1, v2

    .line 281
    goto :goto_a

    .line 287
    :catch_1a
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 289
    goto :goto_17
.end method

.method public put(Ljava/lang/String;[BII)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    :try_start_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted([BZ)Z

    move-result v3

    if-nez v3, :cond_19

    .line 138
    const-string v1, "KeyStore"

    const-string v3, "Put not allowed. Untrusted certificate."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_18
    return v2

    .line 143
    :cond_19
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1e} :catch_25

    move-result v3

    if-ne v3, v1, :cond_23

    :goto_21
    move v2, v1

    goto :goto_18

    :cond_23
    move v1, v2

    goto :goto_21

    .line 144
    :catch_25
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public putAsUser(Ljava/lang/String;[BIII)Z
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "targetUid"    # I
    .param p4, "flags"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 163
    :try_start_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted([BZ)Z

    move-result v0

    if-nez v0, :cond_19

    .line 164
    const-string v0, "KeyStore"

    const-string v1, "Put not allowed. Untrusted certificate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_18
    return v8

    .line 169
    :cond_19
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p5}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->insert_as_user(Ljava/lang/String;[BIII)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_2e

    move-result v0

    if-ne v0, v7, :cond_2c

    move v0, v7

    :goto_2a
    move v8, v0

    goto :goto_18

    :cond_2c
    move v0, v8

    goto :goto_2a

    .line 170
    :catch_2e
    move-exception v6

    .line 171
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public reset()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->reset()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 274
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 271
    goto :goto_a

    .line 272
    :catch_d
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 274
    goto :goto_a
.end method

.method public resetAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->reset(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 216
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 213
    goto :goto_a

    .line 214
    :catch_d
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 216
    goto :goto_a
.end method

.method public saw(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->saw(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 261
    :goto_6
    return-object v1

    .line 259
    :catch_7
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sign(Ljava/lang/String;[B)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 409
    :goto_6
    return-object v1

    .line 407
    :catch_7
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public state()Landroid/security/KeyStore$State;
    .registers 5

    .prologue
    .line 107
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2}, Landroid/security/IKeystoreService;->test()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_11

    move-result v1

    .line 113
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_28

    .line 117
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 108
    .end local v1    # "ret":I
    :catch_11
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_1f
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 116
    :goto_21
    return-object v2

    .line 115
    :pswitch_22
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_21

    .line 116
    :pswitch_25
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_21

    .line 113
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public stateAsUser(I)Landroid/security/KeyStore$State;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 197
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->test(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_11

    move-result v1

    .line 203
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_28

    .line 207
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 198
    .end local v1    # "ret":I
    :catch_11
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_1f
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 206
    :goto_21
    return-object v2

    .line 205
    :pswitch_22
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_21

    .line 206
    :pswitch_25
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_21

    .line 203
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 436
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 433
    goto :goto_a

    .line 434
    :catch_d
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 436
    goto :goto_a
.end method

.method public unlock(Ljava/lang/String;)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->unlock(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/security/KeyStore;->mError:I

    .line 306
    iget v3, p0, Landroid/security/KeyStore;->mError:I

    if-ne v3, v1, :cond_1c

    .line 307
    .local v1, "ret":Z
    :goto_e
    if-eqz v1, :cond_1b

    .line 308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1e

    .line 314
    .end local v1    # "ret":Z
    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    .line 306
    goto :goto_e

    .line 312
    :catch_1e
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 314
    goto :goto_1b
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 418
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 415
    goto :goto_a

    .line 416
    :catch_d
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 418
    goto :goto_a
.end method
