.class Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaContainerService.java"

# interfaces
.implements Lcom/android/internal/app/IMediaContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMediaContainerService$Stub;
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
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 223
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public calculateDirectorySize(Ljava/lang/String;)J
    .registers 9
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    move-result-wide v2

    .line 412
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    return-wide v2

    .line 412
    .end local v2    # "_result":J
    :catchall_25
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    throw v4
.end method

.method public calculateInstalledSize(Ljava/lang/String;Z)J
    .registers 10
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "isForwardLocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v5, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    if-eqz p2, :cond_14

    const/4 v4, 0x1

    :cond_14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-object v4, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_2d

    move-result-wide v2

    .line 465
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    return-wide v2

    .line 465
    .end local v2    # "_result":J
    :catchall_2d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    throw v4
.end method

.method public checkExternalFreeStorage(Landroid/net/Uri;Z)Z
    .registers 10
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "isForwardLocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    if-eqz p1, :cond_36

    .line 359
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 365
    :goto_19
    if-eqz p2, :cond_43

    move v4, v2

    :goto_1c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-object v4, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_3b

    move-result v4

    if-eqz v4, :cond_45

    .line 371
    .local v2, "_result":Z
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    return v2

    .line 363
    .end local v2    # "_result":Z
    :cond_36
    const/4 v4, 0x0

    :try_start_37
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_19

    .line 371
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    throw v3

    :cond_43
    move v4, v3

    .line 365
    goto :goto_1c

    :cond_45
    move v2, v3

    .line 368
    goto :goto_2f
.end method

.method public checkInternalFreeStorage(Landroid/net/Uri;ZJ)Z
    .registers 12
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "isForwardLocked"    # Z
    .param p3, "threshold"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    if-eqz p1, :cond_39

    .line 333
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 339
    :goto_19
    if-eqz p2, :cond_46

    move v4, v2

    :goto_1c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 341
    iget-object v4, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_3e

    move-result v4

    if-eqz v4, :cond_48

    .line 346
    .local v2, "_result":Z
    :goto_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    return v2

    .line 337
    .end local v2    # "_result":Z
    :cond_39
    const/4 v4, 0x0

    :try_start_3a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_19

    .line 346
    :catchall_3e
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    throw v3

    :cond_46
    move v4, v3

    .line 339
    goto :goto_1c

    :cond_48
    move v2, v3

    .line 343
    goto :goto_32
.end method

.method public clearDirectory(Ljava/lang/String;)V
    .registers 7
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 450
    return-void

    .line 447
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 447
    throw v2
.end method

.method public copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I
    .registers 10
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;
    .param p3, "outStream"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    if-eqz p1, :cond_40

    .line 270
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    :goto_17
    if-eqz p2, :cond_4d

    .line 277
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/ContainerEncryptionParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 283
    :goto_21
    if-eqz p3, :cond_52

    .line 284
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 290
    :goto_2b
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_45

    move-result v2

    .line 295
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    return v2

    .line 274
    .end local v2    # "_result":I
    :cond_40
    const/4 v3, 0x0

    :try_start_41
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_17

    .line 295
    :catchall_45
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw v3

    .line 281
    :cond_4d
    const/4 v3, 0x0

    :try_start_4e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 288
    :cond_52
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_45

    goto :goto_2b
.end method

.method public copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 14
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "resFileName"    # Ljava/lang/String;
    .param p5, "publicResFileName"    # Ljava/lang/String;
    .param p6, "isExternal"    # Z
    .param p7, "isForwardLocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v5, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    if-eqz p1, :cond_45

    .line 240
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 246
    :goto_19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    if-eqz p6, :cond_52

    move v5, v3

    :goto_28
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    if-eqz p7, :cond_54

    :goto_2d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_4a

    move-result-object v2

    .line 257
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    return-object v2

    .line 244
    .end local v2    # "_result":Ljava/lang/String;
    :cond_45
    const/4 v5, 0x0

    :try_start_46
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_19

    .line 257
    :catchall_4a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw v3

    :cond_52
    move v5, v4

    .line 250
    goto :goto_28

    :cond_54
    move v3, v4

    .line 251
    goto :goto_2d
.end method

.method public getFileSystemStats(Ljava/lang/String;)[J
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-object v2

    .line 431
    .local v2, "_result":[J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    return-object v2

    .line 431
    .end local v2    # "_result":[J
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    const-string v0, "com.android.internal.app.IMediaContainerService"

    return-object v0
.end method

.method public getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;
    .registers 11
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "threshold"    # J
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

    .line 306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 310
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    .line 313
    sget-object v3, Landroid/content/pm/PackageInfoLite;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfoLite;
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_37

    .line 320
    .local v2, "_result":Landroid/content/pm/PackageInfoLite;
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    return-object v2

    .line 316
    .end local v2    # "_result":Landroid/content/pm/PackageInfoLite;
    :cond_35
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/content/pm/PackageInfoLite;
    goto :goto_2e

    .line 320
    .end local v2    # "_result":Landroid/content/pm/PackageInfoLite;
    :catchall_37
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw v3
.end method

.method public getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .registers 8
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    .line 387
    sget-object v3, Landroid/content/res/ObbInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ObbInfo;
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_31

    .line 394
    .local v2, "_result":Landroid/content/res/ObbInfo;
    :goto_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 397
    return-object v2

    .line 390
    .end local v2    # "_result":Landroid/content/res/ObbInfo;
    :cond_2f
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/content/res/ObbInfo;
    goto :goto_28

    .line 394
    .end local v2    # "_result":Landroid/content/res/ObbInfo;
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    throw v3
.end method
