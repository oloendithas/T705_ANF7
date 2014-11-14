.class Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephonyRegistryMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 233
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    return-object v0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .param p5, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    if-eqz p2, :cond_37

    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 250
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    if-eqz p4, :cond_39

    :goto_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_3b

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    return-void

    .line 249
    :cond_37
    const/4 v4, 0x0

    goto :goto_18

    :cond_39
    move v2, v3

    .line 251
    goto :goto_20

    .line 257
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw v2
.end method

.method public notifyCallForwardingChanged(ZI)V
    .registers 8
    .param p1, "cfi"    # Z
    .param p2, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 344
    if-eqz p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_28

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    return-void

    .line 350
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 350
    throw v2
.end method

.method public notifyCallState(ILjava/lang/String;I)V
    .registers 9
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_27

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    return-void

    .line 274
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw v2
.end method

.method public notifyCellInfo(Ljava/util/List;I)V
    .registers 8
    .param p2, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 466
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    return-void

    .line 471
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    throw v2
.end method

.method public notifyCellLocation(Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "cellLocation"    # Landroid/os/Bundle;
    .param p2, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 427
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 428
    if-eqz p1, :cond_2c

    .line 429
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 435
    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_31

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    return-void

    .line 433
    :cond_2c
    const/4 v2, 0x0

    :try_start_2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_17

    .line 440
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    throw v2
.end method

.method public notifyDataActivity(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 357
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    return-void

    .line 365
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    throw v2
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V
    .registers 16
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z
    .param p10, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 374
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    if-eqz p2, :cond_52

    move v4, v2

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    if-eqz p6, :cond_54

    .line 381
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v4, 0x0

    invoke-virtual {p6, v0, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 387
    :goto_2b
    if-eqz p7, :cond_61

    .line 388
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/4 v4, 0x0

    invoke-virtual {p7, v0, v4}, Landroid/net/LinkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 394
    :goto_35
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    if-eqz p9, :cond_66

    :goto_3a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_4b
    .catchall {:try_start_a .. :try_end_4b} :catchall_59

    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    return-void

    :cond_52
    move v4, v3

    .line 376
    goto :goto_15

    .line 385
    :cond_54
    const/4 v4, 0x0

    :try_start_55
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_2b

    .line 401
    :catchall_59
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v2

    .line 392
    :cond_61
    const/4 v4, 0x0

    :try_start_62
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_59

    goto :goto_35

    :cond_66
    move v2, v3

    .line 395
    goto :goto_3a
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    return-void

    .line 418
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    throw v2
.end method

.method public notifyMessageWaitingChanged(ZI)V
    .registers 8
    .param p1, "mwi"    # Z
    .param p2, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    if-eqz p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_28

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    return-void

    .line 334
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    throw v2
.end method

.method public notifyOtaspChanged(I)V
    .registers 7
    .param p1, "otaspMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    return-void

    .line 455
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    throw v2
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;I)V
    .registers 8
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 283
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    if-eqz p1, :cond_2b

    .line 285
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 291
    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_30

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    return-void

    .line 289
    :cond_2b
    const/4 v2, 0x0

    :try_start_2c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_17

    .line 296
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw v2
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;I)V
    .registers 8
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    if-eqz p1, :cond_2b

    .line 307
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    .line 313
    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_30

    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    return-void

    .line 311
    :cond_2b
    const/4 v2, 0x0

    :try_start_2c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_17

    .line 318
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    throw v2
.end method
